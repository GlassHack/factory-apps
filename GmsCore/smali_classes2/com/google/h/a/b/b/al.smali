.class final Lcom/google/h/a/b/b/al;
.super Lcom/google/h/a/b/b/c;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/h/a/b/b/ah;

.field private final c:Lcom/google/h/a/b/b/ad;

.field private final d:Lcom/google/h/a/b/b/ad;

.field private final e:Lcom/google/h/a/b/b/ad;

.field private final f:Lcom/google/h/a/b/b/ad;


# direct methods
.method public constructor <init>(Lcom/google/h/a/b/b/ah;Lcom/google/h/a/b/b/e;)V
    .locals 1

    .prologue
    .line 580
    iput-object p1, p0, Lcom/google/h/a/b/b/al;->b:Lcom/google/h/a/b/b/ah;

    invoke-direct {p0}, Lcom/google/h/a/b/b/c;-><init>()V

    .line 581
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/h/a/b/b/e;->a(I)Lcom/google/h/a/b/b/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/a/b/b/al;->c:Lcom/google/h/a/b/b/ad;

    .line 582
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/google/h/a/b/b/e;->a(I)Lcom/google/h/a/b/b/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/a/b/b/al;->d:Lcom/google/h/a/b/b/ad;

    .line 583
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/h/a/b/b/e;->a(I)Lcom/google/h/a/b/b/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/a/b/b/al;->e:Lcom/google/h/a/b/b/ad;

    .line 584
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/h/a/b/b/e;->a(I)Lcom/google/h/a/b/b/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/a/b/b/al;->f:Lcom/google/h/a/b/b/ad;

    .line 585
    return-void
.end method


# virtual methods
.method public final a(JLcom/google/h/a/b/a/b;)V
    .locals 2

    .prologue
    .line 603
    invoke-static {}, Lcom/google/h/a/b/b/ah;->d()Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p3, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget v0, p3, Lcom/google/h/a/b/a/b;->f:F

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/google/h/a/b/b/al;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v0}, Lcom/google/h/a/b/b/ah;->a(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/google/h/a/b/b/al;->f:Lcom/google/h/a/b/b/ad;

    invoke-virtual {v0, v1}, Lcom/google/h/a/b/b/ac;->a(Lcom/google/h/a/b/b/ad;)V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/google/h/a/b/b/al;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v0}, Lcom/google/h/a/b/b/ah;->a(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/google/h/a/b/b/al;->e:Lcom/google/h/a/b/b/ad;

    invoke-virtual {v0, v1}, Lcom/google/h/a/b/b/ac;->a(Lcom/google/h/a/b/b/ad;)V

    goto :goto_0
.end method

.method public final a(JLcom/google/h/a/b/b/u;)V
    .locals 2

    .prologue
    .line 589
    sget-object v0, Lcom/google/h/a/b/b/aj;->a:[I

    invoke-virtual {p3}, Lcom/google/h/a/b/b/u;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 596
    :goto_0
    return-void

    .line 592
    :pswitch_0
    iget-object v0, p0, Lcom/google/h/a/b/b/al;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v0}, Lcom/google/h/a/b/b/ah;->a(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/google/h/a/b/b/al;->c:Lcom/google/h/a/b/b/ad;

    invoke-virtual {v0, v1}, Lcom/google/h/a/b/b/ac;->a(Lcom/google/h/a/b/b/ad;)V

    goto :goto_0

    .line 595
    :pswitch_1
    iget-object v0, p0, Lcom/google/h/a/b/b/al;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v0}, Lcom/google/h/a/b/b/ah;->a(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/google/h/a/b/b/al;->d:Lcom/google/h/a/b/b/ad;

    invoke-virtual {v0, v1}, Lcom/google/h/a/b/b/ac;->a(Lcom/google/h/a/b/b/ad;)V

    goto :goto_0

    .line 589
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
