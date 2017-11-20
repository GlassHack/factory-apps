.class Landroid/support/v4/view/a/n;
.super Landroid/support/v4/view/a/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 871
    invoke-direct {p0}, Landroid/support/v4/view/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final p(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 875
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
