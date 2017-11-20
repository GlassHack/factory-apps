.class public abstract Lcom/google/android/gms/common/server/response/FastMapJsonResponse;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;


# instance fields
.field private final AU:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getValueObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    return-object v0
.end method

.method protected isPrimitiveFieldSet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/math/BigDecimal;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBigDecimals(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/math/BigDecimal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/math/BigDecimal;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBigInteger(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/math/BigInteger;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBigIntegers(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/math/BigInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBooleans(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDecodedBytes(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDoubles(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setFloats(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInteger(Ljava/lang/String;I)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIntegers(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLongs(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStringMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStrings(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastMapJsonResponse;->AU:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
