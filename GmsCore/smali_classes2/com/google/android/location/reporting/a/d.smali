.class public final Lcom/google/android/location/reporting/a/d;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile d:[Lcom/google/android/location/reporting/a/d;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Lcom/google/android/location/reporting/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/google/android/location/reporting/a/d;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/d;->b:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/d;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/reporting/a/d;->G:I

    .line 34
    return-void
.end method

.method public static b()[Lcom/google/android/location/reporting/a/d;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/reporting/a/d;->d:[Lcom/google/android/location/reporting/a/d;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/reporting/a/d;->d:[Lcom/google/android/location/reporting/a/d;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/reporting/a/d;

    sput-object v0, Lcom/google/android/location/reporting/a/d;->d:[Lcom/google/android/location/reporting/a/d;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/reporting/a/d;->d:[Lcom/google/android/location/reporting/a/d;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 110
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/google/android/location/reporting/a/d;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/reporting/a/d;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/reporting/a/d;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 116
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/reporting/a/d;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    if-eqz v1, :cond_2

    .line 120
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_2
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/reporting/a/d;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/d;->a:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/d;->b:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/reporting/a/h;

    invoke-direct {v0}, Lcom/google/android/location/reporting/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

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
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/location/reporting/a/d;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/reporting/a/d;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/a/d;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/reporting/a/d;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    if-eqz v0, :cond_2

    .line 103
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 105
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 106
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    if-ne p1, p0, :cond_1

    .line 48
    const/4 v0, 0x1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/reporting/a/d;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Lcom/google/android/location/reporting/a/d;

    .line 54
    iget-object v1, p0, Lcom/google/android/location/reporting/a/d;->a:Ljava/lang/Long;

    if-nez v1, :cond_5

    .line 55
    iget-object v1, p1, Lcom/google/android/location/reporting/a/d;->a:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/reporting/a/d;->b:Ljava/lang/Long;

    if-nez v1, :cond_6

    .line 62
    iget-object v1, p1, Lcom/google/android/location/reporting/a/d;->b:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    if-nez v1, :cond_7

    .line 69
    iget-object v1, p1, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    if-nez v1, :cond_0

    .line 77
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/location/reporting/a/d;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 58
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/reporting/a/d;->a:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/d;->a:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 65
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/reporting/a/d;->b:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/d;->b:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 73
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    invoke-virtual {v1, v2}, Lcom/google/android/location/reporting/a/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/google/android/location/reporting/a/d;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 85
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/d;->b:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 89
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/reporting/a/d;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    return v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/a/d;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/reporting/a/d;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_1

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/a/h;->hashCode()I

    move-result v1

    goto :goto_2
.end method
