.class Lcom/google/glass/settings/ui/HIDSettingsItemView$2;
.super Ljava/lang/Object;
.source "HIDSettingsItemView.java"

# interfaces
.implements Lcom/google/glass/connectivity/InetConnectionState$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/HIDSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/HIDSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/HIDSettingsItemView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$400(Lcom/google/glass/settings/ui/HIDSettingsItemView;)V

    .line 82
    return-void
.end method
