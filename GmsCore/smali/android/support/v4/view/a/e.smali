.class public final Landroid/support/v4/view/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/support/v4/view/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 126
    new-instance v0, Landroid/support/v4/view/a/f;

    invoke-direct {v0}, Landroid/support/v4/view/a/f;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/e;->a:Landroid/support/v4/view/a/h;

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v0, Landroid/support/v4/view/a/g;

    invoke-direct {v0}, Landroid/support/v4/view/a/g;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/e;->a:Landroid/support/v4/view/a/h;

    goto :goto_0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 1

    .prologue
    .line 196
    sget-object v0, Landroid/support/v4/view/a/e;->a:Landroid/support/v4/view/a/h;

    invoke-interface {v0, p0}, Landroid/support/v4/view/a/h;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    return v0
.end method
