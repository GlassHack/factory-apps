.class public final Lcom/google/android/maps/driveabout/model/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/maps/driveabout/model/u;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/u;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/u;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/model/u;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/model/u;->d:J

    return-wide v0
.end method
