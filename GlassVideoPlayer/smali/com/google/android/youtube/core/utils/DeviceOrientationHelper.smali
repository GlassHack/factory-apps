.class public final Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Lcom/google/android/youtube/core/utils/c;

.field private final b:Landroid/os/Handler;

.field private final c:Z

.field private d:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

.field private e:I

.field private f:Z


# direct methods
.method private static a(I)Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;
    .locals 1

    .prologue
    .line 76
    if-ltz p0, :cond_0

    const/16 v0, 0x1e

    if-le p0, v0, :cond_1

    .line 77
    :cond_0
    const/16 v0, 0x14a

    if-lt p0, v0, :cond_2

    const/16 v0, 0x168

    if-ge p0, v0, :cond_2

    .line 78
    :cond_1
    sget-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->UPRIGHT:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    .line 86
    :goto_0
    return-object v0

    .line 79
    :cond_2
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_3

    const/16 v0, 0x78

    if-gt p0, v0, :cond_3

    .line 80
    sget-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->LEFTONTOP:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    goto :goto_0

    .line 81
    :cond_3
    const/16 v0, 0x96

    if-lt p0, v0, :cond_4

    const/16 v0, 0xd2

    if-gt p0, v0, :cond_4

    .line 82
    sget-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->BOTTOMUP:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    goto :goto_0

    .line 83
    :cond_4
    const/16 v0, 0xf0

    if-lt p0, v0, :cond_5

    const/16 v0, 0x12c

    if-gt p0, v0, :cond_5

    .line 84
    sget-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->RIGHTONTOP:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    goto :goto_0

    .line 86
    :cond_5
    sget-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->UNKNOWN:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    goto :goto_0
.end method


# virtual methods
.method public final disable()V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->f:Z

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 154
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 155
    return-void
.end method

.method public final enable()V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->UNKNOWN:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->d:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->e:I

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->f:Z

    .line 147
    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    .line 148
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    .line 133
    iget v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->a:Lcom/google/android/youtube/core/utils/c;

    .line 138
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->e:I

    .line 139
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->a:Lcom/google/android/youtube/core/utils/c;

    goto :goto_0
.end method

.method public final onOrientationChanged(I)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->a(I)Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    move-result-object v3

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->d:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    if-eq v3, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->b:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->UNKNOWN:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    if-eq v3, v0, :cond_0

    .line 112
    sget-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->UPRIGHT:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    if-eq v3, v0, :cond_1

    .line 113
    sget-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->BOTTOMUP:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    if-eq v3, v0, :cond_1

    move v0, v1

    .line 115
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->c:Z

    if-eqz v4, :cond_2

    .line 117
    :goto_1
    if-eqz v0, :cond_4

    .line 118
    :goto_2
    iget v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 126
    :cond_0
    :goto_3
    iput-object v3, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->d:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    .line 127
    return-void

    :cond_1
    move v0, v2

    .line 113
    goto :goto_0

    .line 115
    :cond_2
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v2, v1

    .line 117
    goto :goto_2

    .line 120
    :cond_5
    iget v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->e:I

    if-eq v0, v2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper;->b:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3
.end method
