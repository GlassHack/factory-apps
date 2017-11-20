.class public abstract Lcom/google/android/gms/common/server/response/FastContentValuesJsonResponse;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;


# instance fields
.field private final AO:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastContentValuesJsonResponse;->AO:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastContentValuesJsonResponse;->AO:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method protected getValueObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastContentValuesJsonResponse;->AO:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastContentValuesJsonResponse;->AO:Landroid/content/ContentValues;

    return-object v0
.end method

.method protected isPrimitiveFieldSet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastContentValuesJsonResponse;->AO:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastContentValuesJsonResponse;->AO:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected setDecodedBytes(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastContentValuesJsonResponse;->AO:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method protected setDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastContentValuesJsonResponse;->AO:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method protected setFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastContentValuesJsonResponse;->AO:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method protected setInteger(Ljava/lang/String;I)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastContentValuesJsonResponse;->AO:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method protected setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastContentValuesJsonResponse;->AO:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method protected setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastContentValuesJsonResponse;->AO:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
