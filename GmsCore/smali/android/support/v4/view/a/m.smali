.class Landroid/support/v4/view/a/m;
.super Landroid/support/v4/view/a/k;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 804
    invoke-direct {p0}, Landroid/support/v4/view/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 827
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 828
    return-void
.end method

.method public final b(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 822
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 823
    return-void
.end method

.method public final c(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 837
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 838
    return-void
.end method

.method public final d(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 847
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 848
    return-void
.end method
