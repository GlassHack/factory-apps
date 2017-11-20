.class public Lcom/google/android/gms/common/server/b/a;
.super Lcom/google/android/gms/common/server/response/b;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    sput-object v0, Lcom/google/android/gms/common/server/b/a;->b:Ljava/util/HashMap;

    const-string v1, "domain"

    const-string v2, "domain"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/google/android/gms/common/server/b/a;->b:Ljava/util/HashMap;

    const-string v1, "reason"

    const-string v2, "reason"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/google/android/gms/common/server/b/a;->b:Ljava/util/HashMap;

    const-string v1, "message"

    const-string v2, "message"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/google/android/gms/common/server/b/a;->b:Ljava/util/HashMap;

    const-string v1, "locationType"

    const-string v2, "locationType"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/google/android/gms/common/server/b/a;->b:Ljava/util/HashMap;

    const-string v1, "location"

    const-string v2, "location"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/gms/common/server/b/a;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    const-string v1, "reason"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
