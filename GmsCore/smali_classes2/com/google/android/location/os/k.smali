.class public final Lcom/google/android/location/os/k;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/location/os/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JIJJ)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/android/location/os/k;->d:Lcom/google/android/location/os/e;

    iput p5, p0, Lcom/google/android/location/os/k;->a:I

    iput-wide p6, p0, Lcom/google/android/location/os/k;->b:J

    iput-wide p8, p0, Lcom/google/android/location/os/k;->c:J

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 366
    iget v0, p0, Lcom/google/android/location/os/k;->a:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 367
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 368
    iget-wide v0, p0, Lcom/google/android/location/os/k;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 369
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 370
    iget-wide v0, p0, Lcom/google/android/location/os/k;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 371
    return-void
.end method
