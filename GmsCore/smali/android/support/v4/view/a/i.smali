.class public final Landroid/support/v4/view/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/support/v4/view/a/l;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 924
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    new-instance v0, Landroid/support/v4/view/a/j;

    invoke-direct {v0}, Landroid/support/v4/view/a/j;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    .line 937
    :goto_0
    return-void

    .line 926
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 927
    new-instance v0, Landroid/support/v4/view/a/o;

    invoke-direct {v0}, Landroid/support/v4/view/a/o;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    goto :goto_0

    .line 928
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 929
    new-instance v0, Landroid/support/v4/view/a/n;

    invoke-direct {v0}, Landroid/support/v4/view/a/n;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    goto :goto_0

    .line 930
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 931
    new-instance v0, Landroid/support/v4/view/a/m;

    invoke-direct {v0}, Landroid/support/v4/view/a/m;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    goto :goto_0

    .line 932
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 933
    new-instance v0, Landroid/support/v4/view/a/k;

    invoke-direct {v0}, Landroid/support/v4/view/a/k;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    goto :goto_0

    .line 935
    :cond_4
    new-instance v0, Landroid/support/v4/view/a/p;

    invoke-direct {v0}, Landroid/support/v4/view/a/p;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    iput-object p1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    .line 1280
    return-void
.end method

.method public static a(Landroid/view/View;)Landroid/support/v4/view/a/i;
    .locals 1

    .prologue
    .line 1297
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    invoke-interface {v0, p0}, Landroid/support/v4/view/a/l;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/i;->a(Ljava/lang/Object;)Landroid/support/v4/view/a/i;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Object;)Landroid/support/v4/view/a/i;
    .locals 1

    .prologue
    .line 1266
    if-eqz p0, :cond_0

    .line 1267
    new-instance v0, Landroid/support/v4/view/a/i;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/i;-><init>(Ljava/lang/Object;)V

    .line 1269
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Landroid/support/v4/view/a/i;
    .locals 1

    .prologue
    .line 1321
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    invoke-interface {v0}, Landroid/support/v4/view/a/l;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/i;->a(Ljava/lang/Object;)Landroid/support/v4/view/a/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 1493
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;I)V

    .line 1494
    return-void
.end method

.method public final a(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1636
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1637
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1364
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 1365
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1989
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->c(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1990
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 1821
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->d(Ljava/lang/Object;Z)V

    .line 1822
    return-void
.end method

.method public final b(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1651
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->c(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1652
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1604
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1605
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1465
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/a/l;->b(Ljava/lang/Object;Landroid/view/View;I)V

    .line 1466
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 2013
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2014
    return-void
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 1478
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final c(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1675
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->d(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1676
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 2061
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->b(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2062
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 1747
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/support/v4/view/a/l;->b(Ljava/lang/Object;Z)V

    .line 1748
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 1796
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/support/v4/view/a/l;->c(Ljava/lang/Object;Z)V

    .line 1797
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2203
    if-ne p0, p1, :cond_1

    .line 2220
    :cond_0
    :goto_0
    return v0

    .line 2206
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 2207
    goto :goto_0

    .line 2209
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 2210
    goto :goto_0

    .line 2212
    :cond_3
    check-cast p1, Landroid/support/v4/view/a/i;

    .line 2213
    iget-object v2, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 2214
    iget-object v2, p1, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 2215
    goto :goto_0

    .line 2217
    :cond_4
    iget-object v2, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2218
    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 1917
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;Z)V

    .line 1918
    return-void
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2022
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2046
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 2198
    iget-object v0, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2226
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2230
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/i;->a(Landroid/graphics/Rect;)V

    .line 2231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "; boundsInParent: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2233
    sget-object v1, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v1, v3, v0}, Landroid/support/v4/view/a/l;->b(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 2234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "; boundsInScreen: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    const-string v0, "; packageName: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2237
    const-string v0, "; className: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->b(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2238
    const-string v0, "; text: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/i;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2239
    const-string v0, "; contentDescription: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/i;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2240
    const-string v0, "; viewId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->p(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    const-string v0, "; checkable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->f(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2243
    const-string v0, "; checked: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2244
    const-string v0, "; focusable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->j(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2245
    const-string v0, "; focused: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->k(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2246
    const-string v0, "; selected: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->o(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2247
    const-string v0, "; clickable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->h(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2248
    const-string v0, "; longClickable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->l(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2249
    const-string v0, "; enabled: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2250
    const-string v0, "; password: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->m(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "; scrollable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->b:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->n(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    const-string v0, "; ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    invoke-virtual {p0}, Landroid/support/v4/view/a/i;->c()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2255
    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int v3, v1, v3

    .line 2256
    xor-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v0

    .line 2257
    sparse-switch v3, :sswitch_data_0

    const-string v0, "ACTION_UNKNOWN"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2258
    if-eqz v1, :cond_0

    .line 2259
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v0, v1

    .line 2261
    goto :goto_0

    .line 2257
    :sswitch_0
    const-string v0, "ACTION_FOCUS"

    goto :goto_1

    :sswitch_1
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_1

    :sswitch_2
    const-string v0, "ACTION_SELECT"

    goto :goto_1

    :sswitch_3
    const-string v0, "ACTION_CLEAR_SELECTION"

    goto :goto_1

    :sswitch_4
    const-string v0, "ACTION_CLICK"

    goto :goto_1

    :sswitch_5
    const-string v0, "ACTION_LONG_CLICK"

    goto :goto_1

    :sswitch_6
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_1

    :sswitch_7
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_1

    :sswitch_8
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_1

    :sswitch_9
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_1

    :sswitch_a
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_1

    :sswitch_b
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_1

    :sswitch_c
    const-string v0, "ACTION_SCROLL_FORWARD"

    goto :goto_1

    :sswitch_d
    const-string v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_1

    :sswitch_e
    const-string v0, "ACTION_CUT"

    goto :goto_1

    :sswitch_f
    const-string v0, "ACTION_COPY"

    goto :goto_1

    :sswitch_10
    const-string v0, "ACTION_PASTE"

    goto :goto_1

    :sswitch_11
    const-string v0, "ACTION_SET_SELECTION"

    goto :goto_1

    .line 2262
    :cond_1
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2257
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method
