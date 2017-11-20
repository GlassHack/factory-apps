.class Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity$2;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "LayoutOverlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->onLayoutOverlayTapped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity$2;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity$2;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;->finish()V

    .line 128
    return-void
.end method
