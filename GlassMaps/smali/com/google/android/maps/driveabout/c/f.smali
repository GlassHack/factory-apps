.class public abstract Lcom/google/android/maps/driveabout/c/f;
.super Lcom/google/android/maps/driveabout/g/j;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/g/j;-><init>(J)V

    .line 71
    iput-object p3, p0, Lcom/google/android/maps/driveabout/c/f;->a:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/g/j;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/maps/driveabout/c/f;->a:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/g/j;-><init>(Lorg/w3c/dom/Node;)V

    .line 76
    const-string v0, "provider"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/f;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/f;->a:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/f;->a:Ljava/lang/String;

    return-object v0
.end method
