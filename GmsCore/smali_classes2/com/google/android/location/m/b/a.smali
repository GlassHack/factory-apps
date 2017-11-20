.class public final Lcom/google/android/location/m/b/a;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/nano/e;

.field private static final e:[Lcom/google/android/location/m/b/a;


# instance fields
.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:Lb/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    const-class v0, Lcom/google/android/location/m/b/a;

    new-instance v1, Lcom/google/protobuf/nano/e;

    const/16 v2, 0xb

    const v3, 0x65270aa

    invoke-direct {v1, v2, v0, v3}, Lcom/google/protobuf/nano/e;-><init>(ILjava/lang/Class;I)V

    sput-object v1, Lcom/google/android/location/m/b/a;->a:Lcom/google/protobuf/nano/e;

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/b/a;

    sput-object v0, Lcom/google/android/location/m/b/a;->e:[Lcom/google/android/location/m/b/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/google/android/location/m/b/a;->b:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/location/m/b/a;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/location/m/b/a;->d:Lb/a/a;

    iput-object v0, p0, Lcom/google/android/location/m/b/a;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/b/a;->G:I

    .line 35
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 108
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/b/a;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 110
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/b/a;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 112
    iget-object v1, p0, Lcom/google/android/location/m/b/a;->d:Lb/a/a;

    if-eqz v1, :cond_0

    .line 113
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/b/a;->d:Lb/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_0
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/b/a;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/b/a;->b:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/b/a;->c:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/b/a;->d:Lb/a/a;

    if-nez v0, :cond_1

    new-instance v0, Lb/a/a;

    invoke-direct {v0}, Lb/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/b/a;->d:Lb/a/a;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/b/a;->d:Lb/a/a;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 97
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/b/a;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->c(IJ)V

    .line 98
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/b/a;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->c(IJ)V

    .line 99
    iget-object v0, p0, Lcom/google/android/location/m/b/a;->d:Lb/a/a;

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/b/a;->d:Lb/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 103
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    if-ne p1, p0, :cond_1

    .line 49
    const/4 v0, 0x1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/b/a;

    if-eqz v1, :cond_0

    .line 54
    check-cast p1, Lcom/google/android/location/m/b/a;

    .line 55
    iget-object v1, p0, Lcom/google/android/location/m/b/a;->b:Ljava/lang/Long;

    if-nez v1, :cond_5

    .line 56
    iget-object v1, p1, Lcom/google/android/location/m/b/a;->b:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/b/a;->c:Ljava/lang/Long;

    if-nez v1, :cond_6

    .line 63
    iget-object v1, p1, Lcom/google/android/location/m/b/a;->c:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/b/a;->d:Lb/a/a;

    if-nez v1, :cond_7

    .line 70
    iget-object v1, p1, Lcom/google/android/location/m/b/a;->d:Lb/a/a;

    if-nez v1, :cond_0

    .line 78
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/b/a;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 59
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/b/a;->b:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/m/b/a;->b:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 66
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/b/a;->c:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/m/b/a;->c:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 74
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/b/a;->d:Lb/a/a;

    iget-object v2, p1, Lcom/google/android/location/m/b/a;->d:Lb/a/a;

    invoke-virtual {v1, v2}, Lb/a/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/google/android/location/m/b/a;->b:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 86
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/b/a;->c:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/b/a;->d:Lb/a/a;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/b/a;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/b/a;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/b/a;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_1

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/b/a;->d:Lb/a/a;

    invoke-virtual {v1}, Lb/a/a;->hashCode()I

    move-result v1

    goto :goto_2
.end method
