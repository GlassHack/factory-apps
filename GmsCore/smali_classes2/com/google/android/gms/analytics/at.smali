.class public final Lcom/google/android/gms/analytics/at;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/analytics/au;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/analytics/at;->G:I

    .line 30
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_0
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 8
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
    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/analytics/au;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/au;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 74
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    if-ne p1, p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/analytics/at;

    if-nez v2, :cond_2

    move v0, v1

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    check-cast p1, Lcom/google/android/gms/analytics/at;

    .line 47
    iget-object v2, p0, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    if-nez v2, :cond_3

    .line 48
    iget-object v2, p1, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    if-eqz v2, :cond_0

    move v0, v1

    .line 49
    goto :goto_0

    .line 52
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    iget-object v3, p1, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/au;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 53
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 64
    return v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/au;->hashCode()I

    move-result v0

    goto :goto_0
.end method
