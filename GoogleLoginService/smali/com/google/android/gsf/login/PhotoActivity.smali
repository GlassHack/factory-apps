.class public Lcom/google/android/gsf/login/PhotoActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "PhotoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PHOTO_DIR:Ljava/io/File;


# instance fields
.field private mBackButton:Landroid/widget/Button;

.field private mDescription:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mPhotoBitmap:Landroid/graphics/Bitmap;

.field private mPhotoButton:Landroid/widget/Button;

.field private mPhotoCropSize:I

.field private mPhotoFile:Ljava/io/File;

.field private mPhotoView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/login/PhotoActivity;->PHOTO_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method private cropPhoto()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 181
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 188
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "image/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v2, "aspectX"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v2, "aspectY"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string v2, "outputX"

    iget v3, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoCropSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string v2, "outputY"

    iget v3, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoCropSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    const/16 v2, 0x4e22

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/PhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GLSActivity"

    const-string v3, "Cannot crop image"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    const v2, 0x7f07007b

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 104
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PhotoActivity;->setContentView(I)V

    .line 106
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mBackButton:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mNextButton:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoButton:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoView:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mDescription:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "noBack"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mBackButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mDescription:Landroid/widget/TextView;

    const v1, 0x7f070077

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mBackButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PhotoActivity;->setBackButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method private loadPhotoPickSize()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/login/Compat$ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 213
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 214
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoCropSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 218
    return-void

    .line 216
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private onNext()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/PhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v2, v2, v0, v1}, Lcom/google/android/gsf/login/ProfileHelper;->updateMeContactWith(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mProfilePhoto:Landroid/graphics/Bitmap;

    .line 227
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PhotoActivity;->setResult(I)V

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PhotoActivity;->finish()V

    .line 229
    return-void
.end method

.method private savePhoto(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 204
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoBitmap:Landroid/graphics/Bitmap;

    .line 205
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoButton:Landroid/widget/Button;

    const v1, 0x7f070079

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 207
    return-void
.end method

.method private takePhoto()V
    .locals 5

    .prologue
    .line 167
    :try_start_0
    sget-object v2, Lcom/google/android/gsf/login/PhotoActivity;->PHOTO_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 168
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/google/android/gsf/login/PhotoActivity;->PHOTO_DIR:Ljava/io/File;

    const-string v4, "profilephoto"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoFile:Ljava/io/File;

    .line 169
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 170
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "output"

    iget-object v3, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    const/16 v2, 0x4e21

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/PhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v2, 0x7f07007a

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 140
    if-eq p2, v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 143
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 161
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/PhotoActivity;->cropPhoto()V

    goto :goto_1

    .line 150
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/google/android/gsf/login/PhotoActivity;->savePhoto(Landroid/content/Intent;)V

    goto :goto_1

    .line 155
    :pswitch_2
    if-ne p2, v0, :cond_1

    .line 156
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PhotoActivity;->setResult(I)V

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PhotoActivity;->finish()V

    goto :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mBackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PhotoActivity;->setResult(I)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PhotoActivity;->finish()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 132
    invoke-direct {p0}, Lcom/google/android/gsf/login/PhotoActivity;->onNext()V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/google/android/gsf/login/PhotoActivity;->takePhoto()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-direct {p0}, Lcom/google/android/gsf/login/PhotoActivity;->initView()V

    .line 75
    invoke-direct {p0}, Lcom/google/android/gsf/login/PhotoActivity;->loadPhotoPickSize()V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PhotoActivity;->overrideAllowBackHardkey()V

    .line 78
    if-eqz p1, :cond_1

    .line 79
    const-string v2, "photo_file"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 81
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoFile:Ljava/io/File;

    .line 83
    :cond_0
    const-string v2, "photo_bitmap"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 84
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 85
    iput-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoBitmap:Landroid/graphics/Bitmap;

    .line 86
    iget-object v2, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    iget-object v2, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoButton:Landroid/widget/Button;

    const v3, 0x7f070079

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 90
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "photo_file"

    iget-object v1, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 98
    const-string v0, "photo_bitmap"

    iget-object v1, p0, Lcom/google/android/gsf/login/PhotoActivity;->mPhotoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method
