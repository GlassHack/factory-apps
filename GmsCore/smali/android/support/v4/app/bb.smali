.class public final Landroid/support/v4/app/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Landroid/app/Notification;

.field public B:Ljava/util/ArrayList;

.field a:Landroid/content/Context;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field public d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field public g:Landroid/graphics/Bitmap;

.field h:Ljava/lang/CharSequence;

.field i:I

.field public j:I

.field public k:Z

.field l:Landroid/support/v4/app/bm;

.field m:Ljava/lang/CharSequence;

.field n:I

.field o:I

.field p:Z

.field public q:Ljava/lang/String;

.field public r:Z

.field s:Ljava/lang/String;

.field public t:Ljava/util/ArrayList;

.field public u:Z

.field v:Ljava/lang/String;

.field w:Landroid/os/Bundle;

.field x:I

.field public y:I

.field z:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bb;->t:Ljava/util/ArrayList;

    .line 818
    iput-boolean v4, p0, Landroid/support/v4/app/bb;->u:Z

    .line 821
    iput v4, p0, Landroid/support/v4/app/bb;->x:I

    .line 822
    iput v4, p0, Landroid/support/v4/app/bb;->y:I

    .line 825
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bb;->A:Landroid/app/Notification;

    .line 840
    iput-object p1, p0, Landroid/support/v4/app/bb;->a:Landroid/content/Context;

    .line 843
    iget-object v0, p0, Landroid/support/v4/app/bb;->A:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 844
    iget-object v0, p0, Landroid/support/v4/app/bb;->A:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 845
    iput v4, p0, Landroid/support/v4/app/bb;->j:I

    .line 846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bb;->B:Ljava/util/ArrayList;

    .line 847
    return-void
.end method

.method protected static f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v1, 0x1400

    .line 1443
    if-nez p0, :cond_1

    .line 1447
    :cond_0
    :goto_0
    return-object p0

    .line 1444
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1445
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/support/v4/app/bb;
    .locals 2

    .prologue
    .line 1129
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/bb;->a(IZ)V

    .line 1130
    return-object p0
.end method

.method public final a(I)Landroid/support/v4/app/bb;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Landroid/support/v4/app/bb;->A:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 883
    return-object p0
.end method

.method public final a(J)Landroid/support/v4/app/bb;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Landroid/support/v4/app/bb;->A:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 855
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/bm;)Landroid/support/v4/app/bb;
    .locals 2

    .prologue
    .line 1371
    iget-object v0, p0, Landroid/support/v4/app/bb;->l:Landroid/support/v4/app/bm;

    if-eq v0, p1, :cond_0

    .line 1372
    iput-object p1, p0, Landroid/support/v4/app/bb;->l:Landroid/support/v4/app/bm;

    .line 1373
    iget-object v0, p0, Landroid/support/v4/app/bb;->l:Landroid/support/v4/app/bm;

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Landroid/support/v4/app/bb;->l:Landroid/support/v4/app/bm;

    iget-object v1, v0, Landroid/support/v4/app/bm;->d:Landroid/support/v4/app/bb;

    if-eq v1, p0, :cond_0

    iput-object p0, v0, Landroid/support/v4/app/bm;->d:Landroid/support/v4/app/bb;

    iget-object v1, v0, Landroid/support/v4/app/bm;->d:Landroid/support/v4/app/bb;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v4/app/bm;->d:Landroid/support/v4/app/bb;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bb;->a(Landroid/support/v4/app/bm;)Landroid/support/v4/app/bb;

    .line 1377
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
    .locals 1

    .prologue
    .line 906
    invoke-static {p1}, Landroid/support/v4/app/bb;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bb;->b:Ljava/lang/CharSequence;

    .line 907
    return-object p0
.end method

.method public final a(IZ)V
    .locals 3

    .prologue
    .line 1186
    if-eqz p2, :cond_0

    .line 1187
    iget-object v0, p0, Landroid/support/v4/app/bb;->A:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1191
    :goto_0
    return-void

    .line 1189
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/bb;->A:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method public final b()Landroid/support/v4/app/bb;
    .locals 2

    .prologue
    .line 1140
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/bb;->a(IZ)V

    .line 1141
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
    .locals 1

    .prologue
    .line 914
    invoke-static {p1}, Landroid/support/v4/app/bb;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bb;->c:Ljava/lang/CharSequence;

    .line 915
    return-object p0
.end method

.method public final c()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 1439
    invoke-static {}, Landroid/support/v4/app/aw;->a()Landroid/support/v4/app/bd;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/app/bd;->a(Landroid/support/v4/app/bb;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
    .locals 1

    .prologue
    .line 928
    invoke-static {p1}, Landroid/support/v4/app/bb;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bb;->m:Ljava/lang/CharSequence;

    .line 929
    return-object p0
.end method

.method public final d(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
    .locals 1

    .prologue
    .line 946
    invoke-static {p1}, Landroid/support/v4/app/bb;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bb;->h:Ljava/lang/CharSequence;

    .line 947
    return-object p0
.end method

.method public final e(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Landroid/support/v4/app/bb;->A:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/bb;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1024
    return-object p0
.end method
