.class Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "LayoutOverlayCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->disableLayoutOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$1;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$1;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->refresh()V

    .line 138
    return-void
.end method
