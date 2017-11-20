.class Lcom/google/glass/settings/ui/SettingsActivity$1;
.super Landroid/database/DataSetObserver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/SettingsActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/settings/ui/SettingsActivity$1;->this$0:Lcom/google/glass/settings/ui/SettingsActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity$1;->this$0:Lcom/google/glass/settings/ui/SettingsActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/SettingsActivity;->access$000(Lcom/google/glass/settings/ui/SettingsActivity;)V

    .line 53
    return-void
.end method
