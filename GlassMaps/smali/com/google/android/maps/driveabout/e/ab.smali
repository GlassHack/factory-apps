.class Lcom/google/android/maps/driveabout/e/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final b:Lcom/google/android/maps/driveabout/f/e;

.field public c:I

.field public final d:I

.field public e:I

.field public f:Lcom/google/android/maps/driveabout/e/ab;

.field public g:Z


# direct methods
.method public constructor <init>(ILcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/e/ab;I)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    .line 65
    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/ab;->b:Lcom/google/android/maps/driveabout/f/e;

    .line 66
    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/ab;->f:Lcom/google/android/maps/driveabout/e/ab;

    .line 67
    iput p4, p0, Lcom/google/android/maps/driveabout/e/ab;->d:I

    .line 68
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ab;->e:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/e/ab;->g:Z

    .line 70
    return-void
.end method
