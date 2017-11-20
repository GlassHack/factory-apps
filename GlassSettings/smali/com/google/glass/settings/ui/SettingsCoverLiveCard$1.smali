.class Lcom/google/glass/settings/ui/SettingsCoverLiveCard$1;
.super Ljava/lang/Object;
.source "SettingsCoverLiveCard.java"

# interfaces
.implements Lcom/google/glass/connectivity/InetConnectionState$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/SettingsCoverLiveCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$1;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$1;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->updateConnectivity()V

    .line 46
    return-void
.end method
