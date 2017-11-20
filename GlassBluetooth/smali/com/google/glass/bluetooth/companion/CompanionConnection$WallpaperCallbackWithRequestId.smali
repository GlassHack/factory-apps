.class Lcom/google/glass/bluetooth/companion/CompanionConnection$WallpaperCallbackWithRequestId;
.super Ljava/lang/Object;
.source "CompanionConnection.java"

# interfaces
.implements Lcom/google/glass/wallpaper/WallpaperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/CompanionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperCallbackWithRequestId"
.end annotation


# instance fields
.field private final requestId:I

.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionConnection;I)V
    .locals 0
    .param p2, "requestId"    # I

    .prologue
    .line 693
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$WallpaperCallbackWithRequestId;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput p2, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$WallpaperCallbackWithRequestId;->requestId:I

    .line 695
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionConnection;ILcom/google/glass/bluetooth/companion/CompanionConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionConnection;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/glass/bluetooth/companion/CompanionConnection$1;

    .prologue
    .line 689
    invoke-direct {p0, p1, p2}, Lcom/google/glass/bluetooth/companion/CompanionConnection$WallpaperCallbackWithRequestId;-><init>(Lcom/google/glass/bluetooth/companion/CompanionConnection;I)V

    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .locals 0

    .prologue
    .line 720
    return-void
.end method

.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 717
    return-void
.end method

.method public onSaveFailed()V
    .locals 3

    .prologue
    .line 708
    new-instance v1, Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;-><init>()V

    .line 709
    .local v1, "setWallpaperResponse":Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    iget v2, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$WallpaperCallbackWithRequestId;->requestId:I

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->setId(I)Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 710
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->setUpdate(I)Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 711
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 712
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$Envelope;->setSetWallpaperResponseG2C(Lcom/google/glass/companion/Proto$SetWallpaperResponse;)Lcom/google/glass/companion/Proto$Envelope;

    .line 713
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$WallpaperCallbackWithRequestId;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    invoke-static {v2}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->access$300(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->sendEnvelopeAsync(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 714
    return-void
.end method

.method public onSaved()V
    .locals 3

    .prologue
    .line 699
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 700
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "com.google.glass.action.SET_WALLPAPER_REQUEST_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    const-string v1, "set_wallpaper_id_key"

    iget v2, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$WallpaperCallbackWithRequestId;->requestId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 702
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$WallpaperCallbackWithRequestId;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    invoke-static {v2}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->access$100(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 703
    return-void
.end method
