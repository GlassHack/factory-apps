.class public final Landroid/support/v4/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 110
    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    :cond_0
    new-instance v0, Landroid/support/v4/b/a/f;

    invoke-direct {v0}, Landroid/support/v4/b/a/f;-><init>()V

    sput-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    .line 119
    :goto_0
    return-void

    .line 112
    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 113
    new-instance v0, Landroid/support/v4/b/a/e;

    invoke-direct {v0}, Landroid/support/v4/b/a/e;-><init>()V

    sput-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    goto :goto_0

    .line 114
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 115
    new-instance v0, Landroid/support/v4/b/a/d;

    invoke-direct {v0}, Landroid/support/v4/b/a/d;-><init>()V

    sput-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    goto :goto_0

    .line 117
    :cond_3
    new-instance v0, Landroid/support/v4/b/a/b;

    invoke-direct {v0}, Landroid/support/v4/b/a/b;-><init>()V

    sput-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;FF)V
    .locals 1

    .prologue
    .line 172
    sget-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/b/a/c;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 173
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;III)V
    .locals 6

    .prologue
    .line 183
    sget-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/b/a/c;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 184
    return-void
.end method
