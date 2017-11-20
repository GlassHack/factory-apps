.class Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;
.super Landroid/os/Handler;
.source "WallpaperHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/wallpaper/WallpaperHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiHandler"
.end annotation


# static fields
.field private static final MSG_TYPE_LOADED:I = 0x0

.field private static final MSG_TYPE_LOAD_FAILED:I = 0x1

.field private static final MSG_TYPE_ON_WALLPAPER_INFO_RETRIEVED:I = 0x4

.field private static final MSG_TYPE_SAVED:I = 0x2

.field private static final MSG_TYPE_SAVE_FAILED:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/wallpaper/WallpaperHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/wallpaper/WallpaperHelper$1;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;Lcom/google/glass/wallpaper/WallpaperCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;
    .param p1, "x1"    # Lcom/google/glass/wallpaper/WallpaperCallback;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->sendOnSavedMessage(Lcom/google/glass/wallpaper/WallpaperCallback;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;Lcom/google/glass/wallpaper/WallpaperCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;
    .param p1, "x1"    # Lcom/google/glass/wallpaper/WallpaperCallback;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->sendOnSaveFailedMessage(Lcom/google/glass/wallpaper/WallpaperCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;Lcom/google/glass/wallpaper/WallpaperInfoCallback;[B[B)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;
    .param p1, "x1"    # Lcom/google/glass/wallpaper/WallpaperInfoCallback;
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->sendOnWallpaperInfoRetrievedMessage(Lcom/google/glass/wallpaper/WallpaperInfoCallback;[B[B)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;Lcom/google/glass/wallpaper/WallpaperCallback;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;
    .param p1, "x1"    # Lcom/google/glass/wallpaper/WallpaperCallback;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->sendOnLoadedMessage(Lcom/google/glass/wallpaper/WallpaperCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;Lcom/google/glass/wallpaper/WallpaperCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;
    .param p1, "x1"    # Lcom/google/glass/wallpaper/WallpaperCallback;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->sendOnLoadFailedMessage(Lcom/google/glass/wallpaper/WallpaperCallback;)V

    return-void
.end method

.method private sendOnLoadFailedMessage(Lcom/google/glass/wallpaper/WallpaperCallback;)V
    .locals 1
    .param p1, "wallpaperCallback"    # Lcom/google/glass/wallpaper/WallpaperCallback;

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 151
    return-void
.end method

.method private sendOnLoadedMessage(Lcom/google/glass/wallpaper/WallpaperCallback;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "wallpaperCallback"    # Lcom/google/glass/wallpaper/WallpaperCallback;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "bitmap"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 144
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 145
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void
.end method

.method private sendOnSaveFailedMessage(Lcom/google/glass/wallpaper/WallpaperCallback;)V
    .locals 1
    .param p1, "wallpaperCallback"    # Lcom/google/glass/wallpaper/WallpaperCallback;

    .prologue
    .line 158
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method private sendOnSavedMessage(Lcom/google/glass/wallpaper/WallpaperCallback;)V
    .locals 1
    .param p1, "wallpaperCallback"    # Lcom/google/glass/wallpaper/WallpaperCallback;

    .prologue
    .line 154
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method

.method private sendOnWallpaperInfoRetrievedMessage(Lcom/google/glass/wallpaper/WallpaperInfoCallback;[B[B)V
    .locals 3
    .param p1, "wallpaperInfoCallback"    # Lcom/google/glass/wallpaper/WallpaperInfoCallback;
    .param p2, "wallpaperBytes"    # [B
    .param p3, "wallpaperHashCode"    # [B

    .prologue
    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "wallpaper_bytes"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 165
    const-string v2, "wallpaper_hash_code"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 166
    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 168
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 170
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 112
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/glass/wallpaper/WallpaperCallback;

    .line 115
    .local v2, "callbackLoaded":Lcom/google/glass/wallpaper/WallpaperCallback;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "bitmap"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 116
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {v2, v0}, Lcom/google/glass/wallpaper/WallpaperCallback;->onLoaded(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 119
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "callbackLoaded":Lcom/google/glass/wallpaper/WallpaperCallback;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/wallpaper/WallpaperCallback;

    .line 120
    .local v1, "callbackLoadFailed":Lcom/google/glass/wallpaper/WallpaperCallback;
    invoke-interface {v1}, Lcom/google/glass/wallpaper/WallpaperCallback;->onLoadFailed()V

    goto :goto_0

    .line 123
    .end local v1    # "callbackLoadFailed":Lcom/google/glass/wallpaper/WallpaperCallback;
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/glass/wallpaper/WallpaperCallback;

    .line 124
    .local v4, "callbackSaved":Lcom/google/glass/wallpaper/WallpaperCallback;
    invoke-interface {v4}, Lcom/google/glass/wallpaper/WallpaperCallback;->onSaved()V

    goto :goto_0

    .line 127
    .end local v4    # "callbackSaved":Lcom/google/glass/wallpaper/WallpaperCallback;
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/google/glass/wallpaper/WallpaperCallback;

    .line 128
    .local v3, "callbackSaveFailed":Lcom/google/glass/wallpaper/WallpaperCallback;
    invoke-interface {v3}, Lcom/google/glass/wallpaper/WallpaperCallback;->onSaveFailed()V

    goto :goto_0

    .line 131
    .end local v3    # "callbackSaveFailed":Lcom/google/glass/wallpaper/WallpaperCallback;
    :pswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/google/glass/wallpaper/WallpaperInfoCallback;

    .line 132
    .local v7, "wallpaperInfoCallback":Lcom/google/glass/wallpaper/WallpaperInfoCallback;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "wallpaper_bytes"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 133
    .local v5, "wallpaperBytes":[B
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "wallpaper_hash_code"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 134
    .local v6, "wallpaperHashCode":[B
    invoke-interface {v7, v5, v6}, Lcom/google/glass/wallpaper/WallpaperInfoCallback;->onWallpaperInfoRetrieved([B[B)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
