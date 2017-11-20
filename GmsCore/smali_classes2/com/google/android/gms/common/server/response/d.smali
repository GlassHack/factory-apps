.class final Lcom/google/android/gms/common/server/response/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/server/response/m;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-static {p1, p2}, Lcom/google/android/gms/common/server/response/c;->a(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
