.class final Lcom/google/android/gms/common/server/response/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/server/response/m;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    invoke-static {p1, p2}, Lcom/google/android/gms/common/server/response/c;->c(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
