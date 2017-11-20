.class Landroid/support/v4/view/bd;
.super Landroid/support/v4/view/bc;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0}, Landroid/support/v4/view/bc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/i;)V
    .locals 1

    .prologue
    .line 885
    invoke-virtual {p2}, Landroid/support/v4/view/a/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 886
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    .prologue
    .line 889
    invoke-virtual {p2}, Landroid/support/v4/view/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 890
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 881
    invoke-virtual {p1, p2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 882
    return-void
.end method

.method public final a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 869
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public final o(Landroid/view/View;)Landroid/support/v4/view/cb;
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Landroid/support/v4/view/bd;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 894
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/bd;->a:Ljava/util/WeakHashMap;

    .line 897
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/bd;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/cb;

    .line 898
    if-nez v0, :cond_1

    .line 899
    new-instance v0, Landroid/support/v4/view/cb;

    invoke-direct {v0, p1}, Landroid/support/v4/view/cb;-><init>(Landroid/view/View;)V

    .line 900
    iget-object v1, p0, Landroid/support/v4/view/bd;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    :cond_1
    return-object v0
.end method
