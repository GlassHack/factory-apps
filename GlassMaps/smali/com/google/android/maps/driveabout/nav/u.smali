.class final Lcom/google/android/maps/driveabout/nav/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/nav/w;

.field private final b:I


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/nav/w;I)V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/u;->a:Lcom/google/android/maps/driveabout/nav/w;

    .line 639
    iput p2, p0, Lcom/google/android/maps/driveabout/nav/u;->b:I

    .line 640
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/nav/w;ILcom/google/android/maps/driveabout/nav/r;)V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/nav/u;-><init>(Lcom/google/android/maps/driveabout/nav/w;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/u;)Lcom/google/android/maps/driveabout/nav/w;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/u;->a:Lcom/google/android/maps/driveabout/nav/w;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/nav/u;)I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/u;->b:I

    return v0
.end method
