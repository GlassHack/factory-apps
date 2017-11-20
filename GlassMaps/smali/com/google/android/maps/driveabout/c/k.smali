.class public final Lcom/google/android/maps/driveabout/c/k;
.super Lcom/google/android/maps/driveabout/g/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/g/j;-><init>()V

    .line 312
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/g/j;-><init>(Lorg/w3c/dom/Node;)V

    .line 316
    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 320
    const-string v0, "<networksdisabled/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 321
    return-void
.end method
