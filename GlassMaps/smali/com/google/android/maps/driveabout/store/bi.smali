.class public final Lcom/google/android/maps/driveabout/store/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/store/bj;

.field private final b:F

.field private final c:F


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/store/bj;FF)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/bi;->a:Lcom/google/android/maps/driveabout/store/bj;

    .line 170
    iput p2, p0, Lcom/google/android/maps/driveabout/store/bi;->b:F

    .line 171
    iput p3, p0, Lcom/google/android/maps/driveabout/store/bi;->c:F

    .line 172
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/store/bj;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bi;->a:Lcom/google/android/maps/driveabout/store/bj;

    return-object v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/google/android/maps/driveabout/store/bi;->b:F

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/google/android/maps/driveabout/store/bi;->c:F

    return v0
.end method
