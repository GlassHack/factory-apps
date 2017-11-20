.class public final Landroid/support/v4/view/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/view/bh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1083
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1084
    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1085
    :cond_0
    new-instance v0, Landroid/support/v4/view/ay;

    invoke-direct {v0}, Landroid/support/v4/view/ay;-><init>()V

    sput-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    .line 1103
    :goto_0
    return-void

    .line 1086
    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 1087
    new-instance v0, Landroid/support/v4/view/bg;

    invoke-direct {v0}, Landroid/support/v4/view/bg;-><init>()V

    sput-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    .line 1088
    :cond_2
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 1089
    new-instance v0, Landroid/support/v4/view/bf;

    invoke-direct {v0}, Landroid/support/v4/view/bf;-><init>()V

    sput-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    .line 1090
    :cond_3
    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 1091
    new-instance v0, Landroid/support/v4/view/be;

    invoke-direct {v0}, Landroid/support/v4/view/be;-><init>()V

    sput-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    .line 1092
    :cond_4
    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    .line 1093
    new-instance v0, Landroid/support/v4/view/bd;

    invoke-direct {v0}, Landroid/support/v4/view/bd;-><init>()V

    sput-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    .line 1094
    :cond_5
    const/16 v1, 0xb

    if-lt v0, v1, :cond_6

    .line 1095
    new-instance v0, Landroid/support/v4/view/bc;

    invoke-direct {v0}, Landroid/support/v4/view/bc;-><init>()V

    sput-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    .line 1096
    :cond_6
    const/16 v1, 0x9

    if-lt v0, v1, :cond_7

    .line 1097
    new-instance v0, Landroid/support/v4/view/bb;

    invoke-direct {v0}, Landroid/support/v4/view/bb;-><init>()V

    sput-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    .line 1098
    :cond_7
    const/4 v1, 0x7

    if-lt v0, v1, :cond_8

    .line 1099
    new-instance v0, Landroid/support/v4/view/ba;

    invoke-direct {v0}, Landroid/support/v4/view/ba;-><init>()V

    sput-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    .line 1101
    :cond_8
    new-instance v0, Landroid/support/v4/view/az;

    invoke-direct {v0}, Landroid/support/v4/view/az;-><init>()V

    sput-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    goto :goto_0
.end method

.method public static a(III)I
    .locals 1

    .prologue
    .line 1655
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/bh;->a(III)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1138
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 1868
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bh;->b(Landroid/view/View;F)V

    .line 1869
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 1329
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/bh;->a(Landroid/view/View;IIII)V

    .line 1330
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 1501
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/bh;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1502
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 1578
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bh;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1579
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a/i;)V
    .locals 1

    .prologue
    .line 1260
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bh;->a(Landroid/view/View;Landroid/support/v4/view/a/i;)V

    .line 1261
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    .prologue
    .line 1275
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bh;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 1276
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1224
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bh;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1225
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1343
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bh;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1344
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 1360
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/bh;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1361
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1113
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bh;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1420
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/bh;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 1884
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bh;->c(Landroid/view/View;F)V

    .line 1885
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1402
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bh;->b(Landroid/view/View;I)V

    .line 1403
    return-void
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1287
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1311
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->d(Landroid/view/View;)V

    .line 1312
    return-void
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 1900
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bh;->d(Landroid/view/View;F)V

    .line 1901
    return-void
.end method

.method public static d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1378
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2078
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bh;->a(Landroid/view/View;F)V

    .line 2079
    return-void
.end method

.method public static e(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1458
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->f(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1522
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1593
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->h(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1638
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->i(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1694
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->j(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static j(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1807
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->k(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static k(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1820
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->l(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static l(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1831
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->m(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1842
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->n(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static n(Landroid/view/View;)Landroid/support/v4/view/cb;
    .locals 1

    .prologue
    .line 1854
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->o(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v0

    return-object v0
.end method

.method public static o(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1990
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/support/v4/view/bh;->e(Landroid/view/View;F)V

    .line 1991
    return-void
.end method

.method public static p(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2135
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->p(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static q(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2143
    sget-object v0, Landroid/support/v4/view/ax;->a:Landroid/support/v4/view/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bh;->a(Landroid/view/View;)V

    .line 2144
    return-void
.end method
