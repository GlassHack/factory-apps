.class public final Lcom/google/android/maps/driveabout/e/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/maps/driveabout/e/d;

.field public final b:Lcom/google/android/maps/driveabout/e/d;

.field public final c:[Lcom/google/android/maps/driveabout/f/e;

.field public final d:[I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/d;Lcom/google/android/maps/driveabout/e/d;[Lcom/google/android/maps/driveabout/f/e;[I)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/aa;->a:Lcom/google/android/maps/driveabout/e/d;

    .line 108
    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/aa;->b:Lcom/google/android/maps/driveabout/e/d;

    .line 109
    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/aa;->c:[Lcom/google/android/maps/driveabout/f/e;

    .line 110
    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/aa;->d:[I

    .line 111
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/aa;->a:Lcom/google/android/maps/driveabout/e/d;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/aa;->b:Lcom/google/android/maps/driveabout/e/d;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
