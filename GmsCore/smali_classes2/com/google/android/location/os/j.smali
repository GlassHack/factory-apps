.class public final Lcom/google/android/location/os/j;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/location/os/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JIJ)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/google/android/location/os/j;->c:Lcom/google/android/location/os/e;

    iput p5, p0, Lcom/google/android/location/os/j;->a:I

    iput-wide p6, p0, Lcom/google/android/location/os/j;->b:J

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 2

    .prologue
    .line 354
    iget v0, p0, Lcom/google/android/location/os/j;->a:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 355
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 356
    iget-wide v0, p0, Lcom/google/android/location/os/j;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 357
    return-void
.end method
