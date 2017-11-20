.class public Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;
.super Landroid/app/Activity;
.source "GlassMainMenuActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final BUTTON_CENTERS_DEG:[F

.field private static final BUTTON_DISTANCE_DEG:F = 15.0f

.field private static final BUTTON_EXIT:I = 0x0

.field private static final BUTTON_GALLERY:I = 0x2

.field private static final BUTTON_TAKE_PANO:I = 0x1

.field private static final ITEM_IDS:[I

.field private static final MAX_ROT_YAW_DEG:I

.field private static final MIN_BUTTON_SIZE:I = 0x9b

.field private static final TAG:Ljava/lang/String;

.field private static final TARGET_FPS:I = 0x3c

.field private static final TITLES:[I


# instance fields
.field private buttons:[Landroid/widget/ImageView;

.field private currentYawDegrees:F

.field private renderThread:Ljava/lang/Thread;

.field private selectedButton:I

.field private selectedItemTitle:Landroid/widget/TextView;

.field private sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    const-class v0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->TAG:Ljava/lang/String;

    .line 41
    new-array v0, v5, [I

    sget v1, Lcom/google/android/apps/lightcycle/R$id;->exit:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/apps/lightcycle/R$id;->take_pano:I

    aput v1, v0, v3

    sget v1, Lcom/google/android/apps/lightcycle/R$id;->gallery:I

    aput v1, v0, v4

    sput-object v0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->ITEM_IDS:[I

    .line 45
    new-array v0, v5, [I

    sget v1, Lcom/google/android/apps/lightcycle/R$string;->exit:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/apps/lightcycle/R$string;->new_panorama:I

    aput v1, v0, v3

    sget v1, Lcom/google/android/apps/lightcycle/R$string;->gallery:I

    aput v1, v0, v4

    sput-object v0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->TITLES:[I

    .line 52
    sget-object v0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->ITEM_IDS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->MAX_ROT_YAW_DEG:I

    .line 56
    sget-object v0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->ITEM_IDS:[I

    array-length v0, v0

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->BUTTON_CENTERS_DEG:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->currentYawDegrees:F

    .line 71
    sget-object v0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->ITEM_IDS:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->buttons:[Landroid/widget/ImageView;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->selectedButton:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->render()V

    return-void
.end method

.method private distanceToWeight(F)F
    .locals 2
    .param p1, "distance"    # F

    .prologue
    const/high16 v1, 0x41700000    # 15.0f

    .line 248
    sub-float v0, v1, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private onMenuItemSelected()V
    .locals 4

    .prologue
    .line 173
    iget v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->selectedButton:I

    if-nez v2, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->finish()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->selectedButton:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/lightcycle/gallery/GalleryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v1, "galleryIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 178
    .end local v1    # "galleryIntent":Landroid/content/Intent;
    :cond_2
    iget v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->selectedButton:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, "capturePanoIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private render()V
    .locals 9

    .prologue
    .line 190
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v5}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAndResetGyroData()[F

    move-result-object v1

    .line 191
    .local v1, "gyro":[F
    const/4 v5, 0x1

    aget v4, v1, v5

    .line 194
    .local v4, "yRad":F
    iget v5, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->currentYawDegrees:F

    float-to-double v5, v5

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->currentYawDegrees:F

    .line 197
    iget v5, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->currentYawDegrees:F

    sget v6, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->MAX_ROT_YAW_DEG:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->currentYawDegrees:F

    .line 201
    sget-object v5, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->ITEM_IDS:[I

    array-length v5, v5

    new-array v3, v5, [F

    .line 206
    .local v3, "weights":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->ITEM_IDS:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 207
    iget v5, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->currentYawDegrees:F

    sget-object v6, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->BUTTON_CENTERS_DEG:[F

    aget v6, v6, v2

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 208
    .local v0, "distance":F
    const/high16 v5, 0x41700000    # 15.0f

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    .line 209
    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->distanceToWeight(F)F

    move-result v5

    aput v5, v3, v2

    .line 206
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "distance":F
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->updateButtonSizes([F)V

    .line 213
    return-void
.end method

.method private updateButtonSizes([F)V
    .locals 9
    .param p1, "weights"    # [F

    .prologue
    const/high16 v8, 0x431b0000    # 155.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 223
    aget v3, p1, v0

    add-float v2, v3, v7

    .line 224
    .local v2, "scale":F
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    mul-float v3, v2, v8

    float-to-int v3, v3

    mul-float v4, v2, v8

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 226
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->buttons:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 230
    iput v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->selectedButton:I

    .line 231
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->buttons:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 235
    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->selectedItemTitle:Landroid/widget/TextView;

    sget-object v4, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->TITLES:[I

    iget v5, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->selectedButton:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->buttons:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 237
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "scale":F
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sget v0, Lcom/google/android/apps/lightcycle/R$layout;->main_menu_glass:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->setContentView(I)V

    .line 86
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 152
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->onMenuItemSelected()V

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->stop()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->renderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 148
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 93
    sget v2, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->MAX_ROT_YAW_DEG:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->currentYawDegrees:F

    .line 96
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 97
    .local v1, "pm":Landroid/os/PowerManager;
    const/16 v2, 0x1a

    sget-object v3, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 98
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->ITEM_IDS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 102
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->buttons:[Landroid/widget/ImageView;

    sget-object v2, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->ITEM_IDS:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v0

    .line 105
    sget-object v2, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->BUTTON_CENTERS_DEG:[F

    const/high16 v3, 0x41700000    # 15.0f

    int-to-float v4, v0

    mul-float/2addr v3, v4

    aput v3, v2, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    sget v2, Lcom/google/android/apps/lightcycle/R$id;->selected_item_title:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->selectedItemTitle:Landroid/widget/TextView;

    .line 110
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->enableEkf(Z)V

    .line 111
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->start(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 114
    new-instance v2, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1;-><init>(Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->renderThread:Ljava/lang/Thread;

    .line 133
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->renderThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 134
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->onMenuItemSelected()V

    .line 164
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
