.class public final Lcom/google/android/maps/driveabout/b/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Lcom/google/android/maps/driveabout/nav/ao;

.field private b:Lcom/google/android/maps/driveabout/nav/ao;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[Lcom/google/android/maps/driveabout/nav/b;

.field private f:Landroid/content/Intent;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ao;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v0

    .line 755
    if-eqz v0, :cond_0

    .line 756
    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/q;->a(Lcom/google/android/maps/driveabout/model/m;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 758
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    .line 759
    if-eqz v0, :cond_1

    .line 760
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ap;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 762
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v0

    .line 763
    if-eqz v0, :cond_2

    .line 764
    invoke-virtual {p1, p4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 766
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->g()Ljava/lang/String;

    move-result-object v0

    .line 767
    if-eqz v0, :cond_3

    .line 768
    invoke-virtual {p1, p5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 771
    :cond_3
    return-void
.end method


# virtual methods
.method final a()Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 695
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "google.navigation"

    .line 696
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/"

    .line 697
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    .line 698
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    .line 699
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 702
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/r;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 703
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/r;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v2

    .line 704
    if-eqz v2, :cond_0

    .line 705
    const-string v3, "altvia"

    invoke-static {v2}, Lcom/google/android/maps/driveabout/b/q;->a(Lcom/google/android/maps/driveabout/model/m;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 702
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/r;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 712
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/r;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v0, v2, v0

    const-string v2, "q"

    const-string v3, "ll"

    const-string v4, "title"

    const-string v5, "token"

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/b/r;->a(Lcom/google/android/maps/driveabout/nav/ao;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/r;->b:Lcom/google/android/maps/driveabout/nav/ao;

    if-eqz v0, :cond_3

    .line 717
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/r;->b:Lcom/google/android/maps/driveabout/nav/ao;

    const-string v2, "s"

    const-string v3, "sll"

    const-string v4, "stitle"

    const-string v5, "stoken"

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/b/r;->a(Lcom/google/android/maps/driveabout/nav/ao;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_3
    iget v0, p0, Lcom/google/android/maps/driveabout/b/r;->c:I

    if-nez v0, :cond_9

    .line 722
    const-string v0, "mode"

    const-string v2, "d"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 731
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/r;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 732
    const-string v0, "entry"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 735
    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/r;->e:[Lcom/google/android/maps/driveabout/nav/b;

    if-eqz v0, :cond_6

    .line 736
    const-string v0, "opt"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/r;->e:[Lcom/google/android/maps/driveabout/nav/b;

    .line 737
    invoke-static {v2}, Lcom/google/android/maps/driveabout/b/q;->a([Lcom/google/android/maps/driveabout/nav/b;)Ljava/lang/String;

    move-result-object v2

    .line 736
    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 740
    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/r;->f:Landroid/content/Intent;

    if-eqz v0, :cond_7

    .line 741
    const-string v0, "r"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/r;->f:Landroid/content/Intent;

    .line 742
    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 741
    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 745
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/r;->g:Z

    if-eqz v0, :cond_8

    .line 746
    const-string v0, "goff"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 749
    :cond_8
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 723
    :cond_9
    iget v0, p0, Lcom/google/android/maps/driveabout/b/r;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    .line 724
    const-string v0, "mode"

    const-string v2, "w"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 725
    :cond_a
    iget v0, p0, Lcom/google/android/maps/driveabout/b/r;->c:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    .line 726
    const-string v0, "mode"

    const-string v2, "b"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 727
    :cond_b
    iget v0, p0, Lcom/google/android/maps/driveabout/b/r;->c:I

    if-ne v0, v6, :cond_4

    .line 728
    const-string v0, "mode"

    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1
.end method

.method final a(I)Lcom/google/android/maps/driveabout/b/r;
    .locals 0

    .prologue
    .line 670
    iput p1, p0, Lcom/google/android/maps/driveabout/b/r;->c:I

    .line 671
    return-object p0
.end method

.method final a(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/b/r;
    .locals 2

    .prologue
    .line 655
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/maps/driveabout/nav/ao;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/r;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 656
    return-object p0
.end method

.method final a([Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/b/r;
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/r;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 661
    return-object p0
.end method

.method final a([Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/b/r;
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/r;->e:[Lcom/google/android/maps/driveabout/nav/b;

    .line 681
    return-object p0
.end method

.method final b(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/b/r;
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/r;->b:Lcom/google/android/maps/driveabout/nav/ao;

    .line 666
    return-object p0
.end method
