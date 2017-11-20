.class public final Lcom/google/android/maps/driveabout/a/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/a/c;


# static fields
.field public static final a:[J

.field public static final b:[J

.field public static final c:[J

.field public static final d:[J

.field public static final e:[J


# instance fields
.field private final f:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 17
    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/maps/driveabout/a/bb;->a:[J

    .line 20
    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/maps/driveabout/a/bb;->b:[J

    .line 23
    new-array v0, v1, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/maps/driveabout/a/bb;->c:[J

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/maps/driveabout/a/bb;->d:[J

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/maps/driveabout/a/bb;->e:[J

    return-void

    .line 17
    nop

    :array_0
    .array-data 8
        0x0
        0xc8
        0x12c
        0xc8
        0x12c
        0x1f4
    .end array-data

    .line 20
    :array_1
    .array-data 8
        0x0
        0x1f4
        0x12c
        0xc8
        0x12c
        0xc8
    .end array-data

    .line 23
    :array_2
    .array-data 8
        0x0
        0xc8
        0x12c
        0xc8
        0x12c
        0xc8
    .end array-data

    .line 26
    :array_3
    .array-data 8
        0x0
        0x5dc
        0x1f4
        0x5dc
    .end array-data

    .line 29
    :array_4
    .array-data 8
        0x0
        0x1f4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "vibrator"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/bb;->f:Landroid/os/Vibrator;

    .line 38
    return-void
.end method

.method private static a(ILcom/google/android/maps/driveabout/nav/ah;)[J
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 54
    sget-object v0, Lcom/google/android/maps/driveabout/a/bb;->d:[J

    .line 72
    :goto_0
    return-object v0

    .line 57
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/ah;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 67
    sget-object v0, Lcom/google/android/maps/driveabout/a/bb;->c:[J

    goto :goto_0

    .line 60
    :pswitch_0
    sget-object v0, Lcom/google/android/maps/driveabout/a/bb;->a:[J

    goto :goto_0

    .line 63
    :pswitch_1
    sget-object v0, Lcom/google/android/maps/driveabout/a/bb;->b:[J

    goto :goto_0

    .line 72
    :cond_1
    sget-object v0, Lcom/google/android/maps/driveabout/a/bb;->e:[J

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/at;->c()I

    move-result v2

    .line 44
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/at;->d()Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/at;->d()Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    .line 47
    :goto_0
    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/a/bb;->a(ILcom/google/android/maps/driveabout/nav/ah;)[J

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/maps/driveabout/a/ba;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/bb;->f:Landroid/os/Vibrator;

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/a/ba;-><init>(Landroid/os/Vibrator;[J)V

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
