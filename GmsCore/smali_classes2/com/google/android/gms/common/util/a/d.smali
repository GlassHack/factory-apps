.class public final Lcom/google/android/gms/common/util/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/common/util/a/c;

.field private b:J

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/gms/common/util/a/a;

.field private f:Lcom/google/android/gms/common/util/a/a;

.field private g:Lcom/google/android/gms/common/util/a/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/util/a/c;Landroid/os/Message;Ljava/lang/String;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/common/util/a/d;->a(Lcom/google/android/gms/common/util/a/c;Landroid/os/Message;Ljava/lang/String;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;)V

    .line 585
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/util/a/c;Landroid/os/Message;Ljava/lang/String;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;)V
    .locals 2

    .prologue
    .line 595
    iput-object p1, p0, Lcom/google/android/gms/common/util/a/d;->a:Lcom/google/android/gms/common/util/a/c;

    .line 596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/util/a/d;->b:J

    .line 597
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/os/Message;->what:I

    :goto_0
    iput v0, p0, Lcom/google/android/gms/common/util/a/d;->c:I

    .line 598
    iput-object p3, p0, Lcom/google/android/gms/common/util/a/d;->d:Ljava/lang/String;

    .line 599
    iput-object p4, p0, Lcom/google/android/gms/common/util/a/d;->e:Lcom/google/android/gms/common/util/a/a;

    .line 600
    iput-object p5, p0, Lcom/google/android/gms/common/util/a/d;->f:Lcom/google/android/gms/common/util/a/a;

    .line 601
    iput-object p6, p0, Lcom/google/android/gms/common/util/a/d;->g:Lcom/google/android/gms/common/util/a/a;

    .line 602
    return-void

    .line 597
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    const-string v0, "time="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 651
    iget-wide v2, p0, Lcom/google/android/gms/common/util/a/d;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 652
    const-string v2, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    const/4 v4, 0x4

    aput-object v0, v3, v4

    const/4 v4, 0x5

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const-string v0, " processed="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/d;->e:Lcom/google/android/gms/common/util/a/a;

    if-nez v0, :cond_1

    const-string v0, "<null>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    const-string v0, " org="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/d;->f:Lcom/google/android/gms/common/util/a/a;

    if-nez v0, :cond_2

    const-string v0, "<null>"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const-string v0, " dest="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/d;->g:Lcom/google/android/gms/common/util/a/a;

    if-nez v0, :cond_3

    const-string v0, "<null>"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const-string v0, " what="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/d;->a:Lcom/google/android/gms/common/util/a/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/d;->a:Lcom/google/android/gms/common/util/a/c;

    iget v2, p0, Lcom/google/android/gms/common/util/a/d;->c:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/util/a/c;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 661
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 662
    iget v0, p0, Lcom/google/android/gms/common/util/a/d;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 663
    const-string v0, "(0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget v0, p0, Lcom/google/android/gms/common/util/a/d;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/d;->e:Lcom/google/android/gms/common/util/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/a/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/d;->f:Lcom/google/android/gms/common/util/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/a/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 658
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/d;->g:Lcom/google/android/gms/common/util/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/a/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 660
    :cond_4
    const-string v0, ""

    goto :goto_3

    .line 667
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method
