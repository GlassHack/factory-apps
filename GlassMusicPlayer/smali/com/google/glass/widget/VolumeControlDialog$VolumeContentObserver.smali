.class Lcom/google/glass/widget/VolumeControlDialog$VolumeContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/VolumeControlDialog;


# direct methods
.method public constructor <init>(Lcom/google/glass/widget/VolumeControlDialog;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/glass/widget/VolumeControlDialog$VolumeContentObserver;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    .line 324
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 325
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    .prologue
    .line 336
    invoke-static {}, Lcom/google/glass/widget/VolumeControlDialog;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "system setting changed: %s, selfChange=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "volume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$VolumeContentObserver;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-static {v0}, Lcom/google/glass/widget/VolumeControlDialog;->access$400(Lcom/google/glass/widget/VolumeControlDialog;)V

    .line 340
    :cond_0
    return-void
.end method
