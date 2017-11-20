.class public final Lcom/google/android/gms/common/analytics/a/g;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Lcom/google/android/gms/common/analytics/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 805
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 806
    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/g;->a:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/g;->b:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/g;->c:Lcom/google/android/gms/common/analytics/a/e;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/analytics/a/g;->G:I

    .line 807
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 834
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 835
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/g;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 836
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/g;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 839
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/g;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 840
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/g;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 843
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/g;->c:Lcom/google/android/gms/common/analytics/a/e;

    if-eqz v1, :cond_2

    .line 844
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/g;->c:Lcom/google/android/gms/common/analytics/a/e;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 847
    :cond_2
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 779
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

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/g;->a:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/g;->b:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/g;->c:Lcom/google/android/gms/common/analytics/a/e;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/analytics/a/e;

    invoke-direct {v0}, Lcom/google/android/gms/common/analytics/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/g;->c:Lcom/google/android/gms/common/analytics/a/e;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/g;->c:Lcom/google/android/gms/common/analytics/a/e;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/g;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 821
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/g;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/g;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 824
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/g;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/g;->c:Lcom/google/android/gms/common/analytics/a/e;

    if-eqz v0, :cond_2

    .line 827
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/g;->c:Lcom/google/android/gms/common/analytics/a/e;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 829
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 830
    return-void
.end method
