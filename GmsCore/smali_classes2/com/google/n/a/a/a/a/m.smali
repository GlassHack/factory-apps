.class public final Lcom/google/n/a/a/a/a/m;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# static fields
.field private static volatile d:[Lcom/google/n/a/a/a/a/m;


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/n/a/a/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 795
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 796
    iput-object v0, p0, Lcom/google/n/a/a/a/a/m;->a:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/m;->G:I

    .line 797
    return-void
.end method

.method public static b()[Lcom/google/n/a/a/a/a/m;
    .locals 2

    .prologue
    .line 775
    sget-object v0, Lcom/google/n/a/a/a/a/m;->d:[Lcom/google/n/a/a/a/a/m;

    if-nez v0, :cond_1

    .line 776
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 778
    :try_start_0
    sget-object v0, Lcom/google/n/a/a/a/a/m;->d:[Lcom/google/n/a/a/a/a/m;

    if-nez v0, :cond_0

    .line 779
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/n/a/a/a/a/m;

    sput-object v0, Lcom/google/n/a/a/a/a/m;->d:[Lcom/google/n/a/a/a/a/m;

    .line 781
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    :cond_1
    sget-object v0, Lcom/google/n/a/a/a/a/m;->d:[Lcom/google/n/a/a/a/a/m;

    return-object v0

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 869
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 870
    iget-object v1, p0, Lcom/google/n/a/a/a/a/m;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 871
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/m;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 874
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 876
    iget-object v1, p0, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    if-eqz v1, :cond_1

    .line 877
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 880
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 769
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/m;->a:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/n/a/a/a/a/c;

    invoke-direct {v0}, Lcom/google/n/a/a/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/google/n/a/a/a/a/m;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 858
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/m;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 860
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    if-eqz v0, :cond_1

    .line 862
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 864
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 865
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 809
    if-ne p1, p0, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v0

    .line 812
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/m;

    if-nez v2, :cond_2

    move v0, v1

    .line 813
    goto :goto_0

    .line 815
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/m;

    .line 816
    iget-object v2, p0, Lcom/google/n/a/a/a/a/m;->a:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 817
    iget-object v2, p1, Lcom/google/n/a/a/a/a/m;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    move v0, v1

    .line 818
    goto :goto_0

    .line 820
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/m;->a:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/m;->a:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 821
    goto :goto_0

    .line 823
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 824
    iget-object v2, p1, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 825
    goto :goto_0

    .line 827
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 828
    goto :goto_0

    .line 830
    :cond_6
    iget-object v2, p0, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    if-nez v2, :cond_7

    .line 831
    iget-object v2, p1, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    if-eqz v2, :cond_0

    move v0, v1

    .line 832
    goto :goto_0

    .line 835
    :cond_7
    iget-object v2, p0, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    invoke-virtual {v2, v3}, Lcom/google/n/a/a/a/a/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 836
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 844
    iget-object v0, p0, Lcom/google/n/a/a/a/a/m;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 847
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 849
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 851
    return v0

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/m;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0

    .line 847
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 849
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    invoke-virtual {v1}, Lcom/google/n/a/a/a/a/c;->hashCode()I

    move-result v1

    goto :goto_2
.end method
