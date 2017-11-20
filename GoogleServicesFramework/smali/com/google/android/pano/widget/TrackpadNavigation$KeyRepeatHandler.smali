.class Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;
.super Landroid/os/Handler;
.source "TrackpadNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/TrackpadNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyRepeatHandler"
.end annotation


# instance fields
.field mDeviceId:I

.field mKey:I

.field mKeyRepeatDelayIndex:I

.field mMessage:I

.field mMetaState:I

.field mSource:I

.field final synthetic this$0:Lcom/google/android/pano/widget/TrackpadNavigation;


# direct methods
.method private constructor <init>(Lcom/google/android/pano/widget/TrackpadNavigation;)V
    .locals 1

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->this$0:Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKey:I

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/pano/widget/TrackpadNavigation;Lcom/google/android/pano/widget/TrackpadNavigation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/pano/widget/TrackpadNavigation;
    .param p2, "x1"    # Lcom/google/android/pano/widget/TrackpadNavigation$1;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;-><init>(Lcom/google/android/pano/widget/TrackpadNavigation;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKey:I

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    .line 224
    :goto_0
    return-void

    .line 219
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKeyRepeatDelayIndex:I

    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$000()[J

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 220
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKeyRepeatDelayIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKeyRepeatDelayIndex:I

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->this$0:Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKey:I

    iget v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMetaState:I

    iget v5, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mSource:I

    iget v6, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mDeviceId:I

    invoke-static/range {v0 .. v6}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$100(Lcom/google/android/pano/widget/TrackpadNavigation;JIIII)V

    .line 223
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$000()[J

    move-result-object v1

    iget v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKeyRepeatDelayIndex:I

    aget-wide v1, v1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method startSendingRepeatKeys(IIII)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "metaState"    # I
    .param p3, "source"    # I
    .param p4, "deviceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 178
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKey:I

    if-eq p1, v0, :cond_1

    .line 179
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKey:I

    .line 180
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->removeMessages(I)V

    .line 181
    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    .line 185
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->removeMessages(I)V

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    .line 193
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$000()[J

    move-result-object v1

    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKeyRepeatDelayIndex:I

    aget-wide v1, v1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method stopSendingRepeatKeys()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 199
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    if-eq v0, v1, :cond_0

    .line 203
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->removeMessages(I)V

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mKey:I

    .line 205
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->mMessage:I

    .line 207
    :cond_0
    return-void
.end method
