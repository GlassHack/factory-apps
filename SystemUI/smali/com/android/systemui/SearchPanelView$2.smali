.class Lcom/android/systemui/SearchPanelView$2;
.super Ljava/lang/Object;
.source "SearchPanelView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$2;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$2;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$2;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->resumeAnimations()V

    .line 200
    const/4 v0, 0x0

    return v0
.end method
