.class Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LayoutOverlayCardScrollAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public final card:Lcom/google/android/glass/widget/CardBuilder;

.field public final cardView:Landroid/view/View;

.field public final overlayView:Lcom/google/glass/settings/ui/developer/LayoutOverlayView;

.field final synthetic this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;


# direct methods
.method public constructor <init>(Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;Lcom/google/glass/settings/ui/developer/LayoutOverlayView;Lcom/google/android/glass/widget/CardBuilder;Landroid/view/View;)V
    .locals 0
    .param p2, "overlayView"    # Lcom/google/glass/settings/ui/developer/LayoutOverlayView;
    .param p3, "card"    # Lcom/google/android/glass/widget/CardBuilder;
    .param p4, "cardView"    # Landroid/view/View;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;->overlayView:Lcom/google/glass/settings/ui/developer/LayoutOverlayView;

    .line 93
    iput-object p3, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;->card:Lcom/google/android/glass/widget/CardBuilder;

    .line 94
    iput-object p4, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;->cardView:Landroid/view/View;

    .line 95
    return-void
.end method
