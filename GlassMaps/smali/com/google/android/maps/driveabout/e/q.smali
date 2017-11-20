.class public final Lcom/google/android/maps/driveabout/e/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/nav/ah;


# direct methods
.method public constructor <init>([Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/q;->a:[Lcom/google/android/maps/driveabout/nav/ah;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/q;->a:[Lcom/google/android/maps/driveabout/nav/ah;

    array-length v0, v0

    return v0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/nav/ah;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/q;->a:[Lcom/google/android/maps/driveabout/nav/ah;

    aget-object v0, v0, p1

    return-object v0
.end method
