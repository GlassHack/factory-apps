.class Lcom/google/glass/settings/ui/SettingsAdapter$1;
.super Ljava/lang/Object;
.source "SettingsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/SettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/SettingsAdapter;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/SettingsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/SettingsAdapter;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/glass/settings/ui/SettingsAdapter$1;->this$0:Lcom/google/glass/settings/ui/SettingsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter$1;->this$0:Lcom/google/glass/settings/ui/SettingsAdapter;

    invoke-static {v0}, Lcom/google/glass/settings/ui/SettingsAdapter;->access$000(Lcom/google/glass/settings/ui/SettingsAdapter;)V

    .line 57
    return-void
.end method
