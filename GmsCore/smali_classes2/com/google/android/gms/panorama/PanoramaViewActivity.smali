.class public Lcom/google/android/gms/panorama/PanoramaViewActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field protected a:Lcom/google/android/gms/panorama/g/f;

.field private b:Lcom/google/android/gms/panorama/g/a;

.field private c:Z

.field private d:Landroid/os/PowerManager$WakeLock;

.field private e:Lcom/google/android/gms/panorama/d/c;

.field private f:Lcom/google/android/gms/panorama/d/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->c:Z

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/panorama/PanoramaViewActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->d:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 136
    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 139
    :cond_0
    if-nez v0, :cond_1

    move-object v0, v1

    .line 148
    :goto_0
    return-object v0

    .line 144
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 145
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "temp_pano.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x1000

    new-array v4, v4, [B

    :goto_1
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v2, "PanoramaViewActivity"

    const-string v3, "Could not open file. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 148
    goto :goto_0

    .line 145
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PanoramaViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wrote stream to temporary file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 367
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 341
    iget-object v3, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a:Lcom/google/android/gms/panorama/g/f;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/gms/panorama/g/f;->b(Z)V

    .line 342
    iput-boolean p1, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->c:Z

    .line 343
    iget-object v3, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->b:Lcom/google/android/gms/panorama/g/a;

    iget-boolean v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->c:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0200dd

    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/android/gms/panorama/g/a;->setImageResource(I)V

    .line 347
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->c:Z

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a:Lcom/google/android/gms/panorama/g/f;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/g/f;->b()V

    .line 351
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->e:Lcom/google/android/gms/panorama/d/c;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/panorama/d/c;->a(Landroid/content/Context;)Lcom/google/android/gms/panorama/d/c;

    .line 352
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a:Lcom/google/android/gms/panorama/g/f;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/g/f;->a(Z)V

    .line 358
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 341
    goto :goto_0

    .line 343
    :cond_1
    const v0, 0x7f0200e9

    goto :goto_1

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->e:Lcom/google/android/gms/panorama/d/c;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/d/c;->a()V

    .line 356
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a:Lcom/google/android/gms/panorama/g/f;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/panorama/g/f;->a(Z)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/google/android/gms/panorama/PanoramaViewActivity;)Lcom/google/android/gms/panorama/g/a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->b:Lcom/google/android/gms/panorama/g/a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/panorama/PanoramaViewActivity;)V
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->f:Lcom/google/android/gms/panorama/d/a;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->f:Lcom/google/android/gms/panorama/d/a;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/d/a;->a()V

    .line 124
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 263
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 294
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a(Z)V

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    .line 272
    if-eqz v2, :cond_3

    .line 273
    invoke-virtual {v2, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 274
    invoke-virtual {v2, v8}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    .line 278
    :goto_1
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 279
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v1

    .line 284
    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v0

    .line 285
    invoke-virtual {p0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 286
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v1

    .line 287
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v0

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    mul-float v5, v2, v1

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    mul-float v6, v1, v0

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a:Lcom/google/android/gms/panorama/g/f;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/panorama/g/f;->a(Landroid/view/MotionEvent;)Z

    move v0, v8

    .line 294
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->setIntent(Landroid/content/Intent;)V

    .line 300
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 304
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 306
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a:Lcom/google/android/gms/panorama/g/f;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/g/f;->c()V

    .line 309
    invoke-direct {p0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a()V

    .line 312
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->e:Lcom/google/android/gms/panorama/d/c;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->e:Lcom/google/android/gms/panorama/d/c;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/d/c;->a()V

    .line 315
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 88
    :cond_0
    new-instance v0, Lcom/google/android/gms/panorama/d/c;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/d/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->e:Lcom/google/android/gms/panorama/d/c;

    .line 89
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 91
    new-instance v1, Lcom/google/android/gms/panorama/d/a;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->e:Lcom/google/android/gms/panorama/d/c;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/panorama/d/a;-><init>(Landroid/view/Display;Lcom/google/android/gms/panorama/d/c;)V

    iput-object v1, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->f:Lcom/google/android/gms/panorama/d/a;

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->f:Lcom/google/android/gms/panorama/d/a;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/d/a;->a()V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 96
    if-nez v1, :cond_1

    .line 116
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->c:Z

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->e:Lcom/google/android/gms/panorama/d/c;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/panorama/d/c;->a(Landroid/content/Context;)Lcom/google/android/gms/panorama/d/c;

    .line 107
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a()V

    .line 110
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 111
    const v2, 0x2000001a

    const-string v3, "PanoramaViewActivity"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->d:Landroid/os/PowerManager$WakeLock;

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 115
    const-string v0, "PanoramaViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempting to show panorama : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/panorama/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/panorama/c;-><init>(Lcom/google/android/gms/panorama/PanoramaViewActivity;)V

    new-instance v2, Lcom/google/android/gms/panorama/f/f;

    invoke-direct {v2, v1}, Lcom/google/android/gms/panorama/f/f;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/panorama/f/e;->a(Lcom/google/android/gms/panorama/f/d;)Lcom/google/android/gms/panorama/f/e;

    move-result-object v2

    if-nez v2, :cond_3

    const v1, 0x7f1002bf

    invoke-static {v1, p0, v0}, Lcom/google/android/gms/panorama/f/b;->a(ILandroid/content/Context;Lcom/google/android/gms/panorama/f/a;)V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v2, "PanoramaViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not load file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f1002c0

    invoke-static {v1, p0, v0}, Lcom/google/android/gms/panorama/f/b;->a(ILandroid/content/Context;Lcom/google/android/gms/panorama/f/a;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/panorama/g;->a:Lcom/google/android/gms/panorama/c/a;

    invoke-static {v3, v0}, Lcom/google/android/gms/panorama/g/o;->a(Ljava/io/File;Lcom/google/android/gms/panorama/c/a;)Lcom/google/android/gms/panorama/g/n;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/google/android/gms/panorama/g/f;

    new-instance v3, Lcom/google/android/gms/panorama/g/e;

    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/panorama/g/e;-><init>(Lcom/google/android/gms/panorama/g/n;Lcom/google/android/gms/panorama/f/e;)V

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/panorama/g/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/panorama/g/e;)V

    iput-object v1, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a:Lcom/google/android/gms/panorama/g/f;

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a:Lcom/google/android/gms/panorama/g/f;

    new-instance v1, Lcom/google/android/gms/panorama/d;

    invoke-direct {v1, p0}, Lcom/google/android/gms/panorama/d;-><init>(Lcom/google/android/gms/panorama/PanoramaViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/g/f;->b(Lcom/google/android/gms/panorama/f/a;)V

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a:Lcom/google/android/gms/panorama/g/f;

    new-instance v1, Lcom/google/android/gms/panorama/e;

    invoke-direct {v1, p0}, Lcom/google/android/gms/panorama/e;-><init>(Lcom/google/android/gms/panorama/PanoramaViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/g/f;->a(Lcom/google/android/gms/panorama/f/a;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a:Lcom/google/android/gms/panorama/g/f;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/google/android/gms/panorama/g/a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/panorama/g/a;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/panorama/f;

    invoke-direct {v2, p0}, Lcom/google/android/gms/panorama/f;-><init>(Lcom/google/android/gms/panorama/PanoramaViewActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/panorama/g/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->b:Lcom/google/android/gms/panorama/g/a;

    iget-object v1, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->b:Lcom/google/android/gms/panorama/g/a;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a:Lcom/google/android/gms/panorama/g/f;

    iget-object v1, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->f:Lcom/google/android/gms/panorama/d/a;

    iget-object v2, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->e:Lcom/google/android/gms/panorama/d/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/panorama/g/f;->a(Lcom/google/android/gms/panorama/d/a;Lcom/google/android/gms/panorama/d/c;)V

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaViewActivity;->b:Lcom/google/android/gms/panorama/g/a;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/g/a;->a()V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/panorama/g/d;

    invoke-direct {v0, v3}, Lcom/google/android/gms/panorama/g/d;-><init>(Ljava/io/File;)V

    goto :goto_1
.end method
