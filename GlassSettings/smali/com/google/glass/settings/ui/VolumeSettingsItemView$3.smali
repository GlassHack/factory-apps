.class Lcom/google/glass/settings/ui/VolumeSettingsItemView$3;
.super Ljava/lang/Object;
.source "VolumeSettingsItemView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/VolumeSettingsItemView;->onConfirm()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$3;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$3;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$100(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)V

    .line 151
    return-void
.end method
