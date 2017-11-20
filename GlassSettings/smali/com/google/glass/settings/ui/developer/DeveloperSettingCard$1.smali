.class Lcom/google/glass/settings/ui/developer/DeveloperSettingCard$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "DeveloperSettingCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->showConfirmationAndRefresh(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard$1;->this$0:Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard$1;->this$0:Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->refresh()V

    .line 134
    return-void
.end method
