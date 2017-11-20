.class Lcom/google/android/location/os/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final f:Lcom/google/android/location/os/c;

.field final g:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/c;J)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/location/os/af;->f:Lcom/google/android/location/os/c;

    .line 48
    iput-wide p2, p0, Lcom/google/android/location/os/af;->g:J

    .line 49
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/PrintWriter;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public final b(Ljava/io/PrintWriter;)V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 52
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 53
    iget-wide v0, p0, Lcom/google/android/location/os/af;->g:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 54
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 55
    iget-object v0, p0, Lcom/google/android/location/os/af;->f:Lcom/google/android/location/os/c;

    invoke-virtual {v0}, Lcom/google/android/location/os/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/location/os/af;->a(Ljava/io/PrintWriter;)V

    .line 58
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 59
    return-void
.end method
