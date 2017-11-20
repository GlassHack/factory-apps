.class Lcom/google/glass/settings/ui/VolumeSettingsItemView$1;
.super Ljava/lang/Object;
.source "VolumeSettingsItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/VolumeSettingsItemView;
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
    .line 53
    iput-object p1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 56
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 59
    iget-object v0, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$100(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)V

    .line 60
    iget-object v0, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$300(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-static {v1}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$200(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Ljava/lang/Runnable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void
.end method
