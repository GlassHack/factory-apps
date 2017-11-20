.class public final Lcom/google/android/maps/driveabout/c/l;
.super Lcom/google/android/maps/driveabout/g/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/g/j;-><init>()V

    .line 330
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/g/j;-><init>(Lorg/w3c/dom/Node;)V

    .line 334
    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 338
    const-string v0, "<networksenabled/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 339
    return-void
.end method
