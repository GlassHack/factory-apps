.class public Lcom/google/android/gms/internal/rw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/InteractionFeedback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAutocompleteSelectedFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AutocompleteBuffer;II)Lcom/google/android/gms/common/api/PendingResult;
    .locals 8
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "autocompleteBuffer"    # Lcom/google/android/gms/people/model/AutocompleteBuffer;
    .param p3, "selectedIndex"    # I
    .param p4, "interactionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/people/model/AutocompleteBuffer;",
            "II)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/rw;->sendAutocompleteSelectedFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AutocompleteBuffer;IIJ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public sendAutocompleteSelectedFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AutocompleteBuffer;IIJ)Lcom/google/android/gms/common/api/PendingResult;
    .locals 9
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "autocompleteBuffer"    # Lcom/google/android/gms/people/model/AutocompleteBuffer;
    .param p3, "selectedIndex"    # I
    .param p4, "interactionType"    # I
    .param p5, "sessionId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/people/model/AutocompleteBuffer;",
            "IIJ)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/qz;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sendAutocompleteSelectedFeedback"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/qz;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/rw$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/rw$4;-><init>(Lcom/google/android/gms/internal/rw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AutocompleteBuffer;IIJ)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public sendAutocompleteShownFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AutocompleteBuffer;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "autocompleteBuffer"    # Lcom/google/android/gms/people/model/AutocompleteBuffer;
    .param p3, "interactionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/people/model/AutocompleteBuffer;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/rw;->sendAutocompleteShownFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AutocompleteBuffer;IJ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public sendAutocompleteShownFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AutocompleteBuffer;IJ)Lcom/google/android/gms/common/api/PendingResult;
    .locals 8
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "autocompleteBuffer"    # Lcom/google/android/gms/people/model/AutocompleteBuffer;
    .param p3, "interactionType"    # I
    .param p4, "sessionId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/people/model/AutocompleteBuffer;",
            "IJ)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/qz;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sendAutocompleteShownFeedback"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/qz;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/rw$3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/rw$3;-><init>(Lcom/google/android/gms/internal/rw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AutocompleteBuffer;IJ)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public sendFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "contactItem"    # Ljava/lang/String;
    .param p3, "interactionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/qz;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sendFeedback"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/qz;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/rw$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/rw$1;-><init>(Lcom/google/android/gms/internal/rw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public sendFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "contactItems"    # [Ljava/lang/String;
    .param p3, "interactionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/qz;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sendFeedback"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/qz;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/rd;->aEc:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/rw$2;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/google/android/gms/internal/rw$2;-><init>(Lcom/google/android/gms/internal/rw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method
