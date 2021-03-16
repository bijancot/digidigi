<div class="py-1">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h3 class="display-3">Edit E-Magazine</h3>
      </div>
    </div>
  </div>
</div>
<?php if ($this->session->flashdata('error_message')){ ?>
<div class="py-1">
  <div class="container">
    <div class="alert alert-danger" role="alert">
      <h4 class="alert-heading">Oh snap!<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></h4>
      <p><?= $this->session->flashdata('error_message') ?></p>
    </div>
  </div>
</div>
<?php } 
if ($this->session->flashdata('success_message')){ ?>
<div class="py-1">
  <div class="container">
    <div class="alert alert-success" role="alert">
      <h4 class="alert-heading">Sukses<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></h4>
      <p><?= $this->session->flashdata('success_message') ?></p>
    </div>
  </div>
</div>
<?php } ?>
<div class="py-1">
  <div class="container">
    <div class="alert alert-primary" role="alert">
      <p><b>Informasi!</b> Field yang ditandai harus diisi.</p>
      <p>Jika ingin mengganti file e-magazine, hapus terlebih dahulu file yang sudah ada.</p>
    </div>
  </div>
</div>
<div class="py-4">
  <div class="container">
    <div class="row">
      <div class="col-md-9">
        <form id="c_form-h" method="post" action="<?= isset($emagz->FILE) ? base_url('emagz/update') : base_url('emagz/update_with_emagz'); ?>" enctype="multipart/form-data">
        <input type="hidden" name="id_emagz" value="<?= $emagz->ID_EMAGZ ?>">
        <div class="form-group row"> 
          <label for="judul" class="col-3 col-form-label">Nama E-Magazine*</label>
          <div class="col-9">
            <input type="text" class="form-control" name="judul" value="<?= $emagz->NAME ?>"> 
          </div>
        </div>
        <div class="form-group row">
          <label for="isi" class="col-3 col-form-label">File E-Magazine (PDF)*</label>
          <div class="col-9">
            <?php if (isset($emagz->FILE)){ ?>
              <a href="<?= base_url('emagz/download/' . $emagz->ID_EMAGZ) ?>"><?= $emagz->FILE ?></a>&ensp;<a href="#" data-toggle="modal" data-target="#ModalDelete" class="btn btn-danger">Hapus File</a>
              <br>
              <em>Klik pada nama file untuk mendownload</em>
            <?php } else { ?>
              <input type="file" name="emagz" class="form-control-file">
            <?php } ?>
          </div>
        </div>
        <div class="form-group row"> 
          <label for="linkpubhtml5" class="col-3 col-form-label">Link PubHTML 5</label>
          <div class="col-6">
            <input type="text" class="form-control" id="linkPubHtml5" value="<?= $emagz->LINK_PUBHTML5 ?>" name="linkPubHtml5"> 
          </div>
          <div class="col-3">
            <div class="btn-group btn-group-toggle" data-toggle="buttons">
              <label class="btn btn-primary <?= $emagz->IS_PUBACTIVE == 't'? 'active' : '' ?>">
                <input type="radio" value="true" name="isPubActive" id="option2" autocomplete="off" <?= $emagz->IS_PUBACTIVE == 't'? 'checked' : '' ?>> Aktif
              </label>
              <label class="btn btn-primary <?= $emagz->IS_PUBACTIVE == 'f'? 'active' : '' ?>">
                <input type="radio" value="false" name="isPubActive" id="option3" autocomplete="off" <?= $emagz->IS_PUBACTIVE == 'f'? 'checked' : '' ?>> Tidak Aktif
              </label>
            </div>
          </div>
        </div>
        <div class="form-group row"> 
          <label for="linkquiz" class="col-3 col-form-label">Link Quiz</label>
          <div class="col-9">
            <input type="text" class="form-control" id="linkQuiz" value="<?= $emagz->LINK_QUIZ ?>" name="linkQuiz"> 
          </div>
        </div>
        <a class="btn btn-primary" href="javascript:confirmForm()" >Edit E-Magazine</a>
      </div>
      <div class="col-md-3">
        <label>Preview Thumbnail E-Magazine</label>
        <img class="img-fluid d-block py-2" id="preview" src="<?= base_url('emagazine/thumbnail/' . $emagz->THUMBNAIL) ?>">
        <input type="file" name="files" id="image" style="display: none;">
        <input type="hidden" name="old_files" id="old_files" value="<?= !empty($emagz->THUMBNAIL) ? $emagz->THUMBNAIL : '' ?>">
        <a class="btn btn-default" href="javascript:changeProfile()">Ubah</a>
        <a class="btn btn-danger" href="javascript:removeImage()">Hapus</a>
      </div>
      </form>
    </div>
  </div>
</div>
<div class="modal fade" id="ModalDelete" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Konfirmasi Penghapusan</h5> <button type="button" class="close" data-dismiss="modal"> <span>×</span> </button>
      </div>
      <div class="modal-body">
        <p>Anda yakin ingin menghapus file?</p>
      </div>
      <div class="modal-footer"> 
        <a href="<?php echo base_url() ?>emagz/delete_files/<?= $emagz->ID_EMAGZ ?>" class="btn btn-danger">Delete</a>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> 
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="ModalSubmit" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Konfirmasi Submit</h5> <button type="button" class="close" data-dismiss="modal"> <span>×</span> </button>
      </div>
      <div class="modal-body">
        <p>Link field pubhtml 5 atau quiz masih kosong. Anda yakin untuk mengubah data?</p>
      </div>
      <div class="modal-footer"> 
        <a href="javascript:submitForm()" class="btn btn-success">Save</a>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> 
      </div>
    </div>
  </div>
</div>
<script type='text/javascript'>
  function changeProfile() {
    $('#image').click();
  }
  $('#image').change(function () {
    var imgPath = this.value;
    var ext = imgPath.substring(imgPath.lastIndexOf('.') + 1).toLowerCase();
    if (ext == "gif" || ext == "png" || ext == "jpg" || ext == "jpeg")
      readURL(this);
    else
      alert("Please select image file (jpg, jpeg, png).")
  });
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.readAsDataURL(input.files[0]);
      reader.onload = function (e) {
        $('#preview').attr('src', e.target.result);
      };
    }
  }
  function removeImage() {
    $('#preview').attr('src', '<?= base_url('assets/image/no_image.png') ?>');
    $('#old_files').val('');
  }

  function confirmForm() {
    let linkPubHtml5 = $('#linkPubHtml5').val()
    let linkQuiz = $('#linkQuiz').val()

    if(linkPubHtml5 == '' || linkQuiz == ''){
      $('#ModalSubmit').modal('show')
    }else{
      submitForm()
    }
  }

  function submitForm() {
    $('#c_form-h').submit()
  }
</script>