.class Lcom/android/systemui/statusbar/phone/PanelView$1;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v0, p4, p5}, Lcom/android/systemui/statusbar/phone/PanelView;->access$000(Lcom/android/systemui/statusbar/phone/PanelView;J)V

    .line 208
    return-void
.end method
