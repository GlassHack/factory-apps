.class Lcom/google/glass/home/timeline/active/HomeItemView$SendWallpaperInfoCallback;
.super Ljava/lang/Object;
.source "HomeItemView.java"

# interfaces
.implements Lcom/google/glass/wallpaper/WallpaperInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/active/HomeItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendWallpaperInfoCallback"
.end annotation


# instance fields
.field private requestHashCode:[B

.field final synthetic this$0:Lcom/google/glass/home/timeline/active/HomeItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/HomeItemView;[B)V
    .locals 0
    .param p2, "requestHashCode"    # [B

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$SendWallpaperInfoCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/google/glass/home/timeline/active/HomeItemView$SendWallpaperInfoCallback;->requestHashCode:[B

    .line 251
    return-void
.end method


# virtual methods
.method public onWallpaperInfoRetrieved([B[B)V
    .locals 4
    .param p1, "wallpaperBytes"    # [B
    .param p2, "wallpaperHashCode"    # [B

    .prologue
    .line 255
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 256
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    new-instance v2, Lcom/google/glass/companion/Proto$WallpaperInfo;

    invoke-direct {v2}, Lcom/google/glass/companion/Proto$WallpaperInfo;-><init>()V

    .line 257
    .local v2, "wallpaperInfo":Lcom/google/glass/companion/Proto$WallpaperInfo;
    new-instance v1, Lcom/google/glass/companion/Proto$Media;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$Media;-><init>()V

    .line 260
    .local v1, "wallpaper":Lcom/google/glass/companion/Proto$Media;
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/HomeItemView$SendWallpaperInfoCallback;->requestHashCode:[B

    .line 261
    invoke-static {p2, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 262
    invoke-virtual {v1, p1}, Lcom/google/glass/companion/Proto$Media;->setBytes([B)Lcom/google/glass/companion/Proto$Media;

    .line 264
    :cond_0
    const-string v3, "image/jpeg"

    invoke-virtual {v1, v3}, Lcom/google/glass/companion/Proto$Media;->setMimeType(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Media;

    .line 265
    invoke-virtual {v1, p2}, Lcom/google/glass/companion/Proto$Media;->setSha1HashCode([B)Lcom/google/glass/companion/Proto$Media;

    .line 266
    invoke-virtual {v2, v1}, Lcom/google/glass/companion/Proto$WallpaperInfo;->setWallpaper(Lcom/google/glass/companion/Proto$Media;)Lcom/google/glass/companion/Proto$WallpaperInfo;

    .line 267
    invoke-virtual {v0, v2}, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperInfoG2C(Lcom/google/glass/companion/Proto$WallpaperInfo;)Lcom/google/glass/companion/Proto$Envelope;

    .line 268
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/HomeItemView$SendWallpaperInfoCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v3}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$500(Lcom/google/glass/home/timeline/active/HomeItemView;)Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    .line 269
    return-void
.end method
