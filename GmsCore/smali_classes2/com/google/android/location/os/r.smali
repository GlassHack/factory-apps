.class public final Lcom/google/android/location/os/r;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/location/os/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JI)V
    .locals 1

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/android/location/os/r;->b:Lcom/google/android/location/os/e;

    iput p5, p0, Lcom/google/android/location/os/r;->a:I

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/google/android/location/os/r;->a:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 426
    return-void
.end method
