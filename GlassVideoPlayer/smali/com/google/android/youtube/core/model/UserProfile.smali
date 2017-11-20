.class public final Lcom/google/android/youtube/core/model/UserProfile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LEGAL_AGE:I = 0x12


# instance fields
.field public final activityUri:Landroid/net/Uri;

.field public final age:I

.field public final alternateUri:Landroid/net/Uri;

.field public final channelId:Ljava/lang/String;

.field public final channelViewsCount:J

.field public final displayUsername:Ljava/lang/String;

.field public final email:Ljava/lang/String;

.field public final favoritesCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final favoritesUri:Landroid/net/Uri;

.field public final gender:Lcom/google/android/youtube/core/model/UserProfile$Gender;

.field public final isEligibleForChannel:Z

.field public final isLightweight:Z

.field public final playlistsUri:Landroid/net/Uri;

.field public final plusUserId:Ljava/lang/String;

.field public final selfUri:Landroid/net/Uri;

.field public final subscribersCount:I

.field public final subscriptionsCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final subscriptionsUri:Landroid/net/Uri;

.field public final summary:Ljava/lang/String;

.field public final thumbnailUri:Landroid/net/Uri;

.field public final uploadViewsCount:J

.field public final uploadedCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final uploadsUri:Landroid/net/Uri;

.field public final uri:Landroid/net/Uri;

.field public final username:Ljava/lang/String;

.field public final watchHistoryUri:Landroid/net/Uri;

.field public final watchLaterUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/youtube/core/model/UserProfile$Gender;Ljava/lang/String;Landroid/net/Uri;ZZLandroid/net/Uri;ILandroid/net/Uri;ILandroid/net/Uri;ILandroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JJI)V
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile;->uri:Landroid/net/Uri;

    .line 107
    iput-object p2, p0, Lcom/google/android/youtube/core/model/UserProfile;->selfUri:Landroid/net/Uri;

    .line 108
    iput-object p3, p0, Lcom/google/android/youtube/core/model/UserProfile;->alternateUri:Landroid/net/Uri;

    .line 110
    if-eqz p4, :cond_0

    move-object v2, p4

    :goto_0
    iput-object v2, p0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    .line 111
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput-object p4, p0, Lcom/google/android/youtube/core/model/UserProfile;->displayUsername:Ljava/lang/String;

    .line 112
    iput-object p6, p0, Lcom/google/android/youtube/core/model/UserProfile;->channelId:Ljava/lang/String;

    .line 113
    iput-object p7, p0, Lcom/google/android/youtube/core/model/UserProfile;->plusUserId:Ljava/lang/String;

    .line 114
    iput-object p8, p0, Lcom/google/android/youtube/core/model/UserProfile;->email:Ljava/lang/String;

    .line 115
    iput p9, p0, Lcom/google/android/youtube/core/model/UserProfile;->age:I

    .line 116
    iput-object p10, p0, Lcom/google/android/youtube/core/model/UserProfile;->gender:Lcom/google/android/youtube/core/model/UserProfile$Gender;

    .line 117
    iput-object p11, p0, Lcom/google/android/youtube/core/model/UserProfile;->summary:Ljava/lang/String;

    .line 118
    iput-object p12, p0, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    .line 119
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->isLightweight:Z

    .line 120
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->isEligibleForChannel:Z

    .line 121
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadsUri:Landroid/net/Uri;

    .line 122
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadedCount:I

    .line 123
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->favoritesUri:Landroid/net/Uri;

    .line 124
    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->favoritesCount:I

    .line 125
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscriptionsUri:Landroid/net/Uri;

    .line 126
    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscriptionsCount:I

    .line 127
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->watchHistoryUri:Landroid/net/Uri;

    .line 128
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->watchLaterUri:Landroid/net/Uri;

    .line 129
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->playlistsUri:Landroid/net/Uri;

    .line 130
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->activityUri:Landroid/net/Uri;

    .line 131
    move-wide/from16 v0, p25

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->channelViewsCount:J

    .line 132
    move-wide/from16 v0, p27

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadViewsCount:J

    .line 133
    move/from16 v0, p29

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscribersCount:I

    .line 134
    return-void

    :cond_0
    move-object v2, p8

    .line 110
    goto :goto_0

    :cond_1
    move-object p4, p5

    .line 111
    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/UserProfile;->buildUpon()Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;-><init>()V

    .line 159
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->selfUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->alternateUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->alternateUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->displayUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->plusUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->plusUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 167
    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->age:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->gender:Lcom/google/android/youtube/core/model/UserProfile$Gender;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->gender(Lcom/google/android/youtube/core/model/UserProfile$Gender;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 171
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->isLightweight:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight(Z)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 172
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->isEligibleForChannel:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isEligibleForChannel(Z)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 174
    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadedCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->favoritesUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 176
    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->favoritesCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscriptionsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 178
    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscriptionsCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->watchHistoryUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchHistoryUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->watchLaterUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchLaterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->playlistsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->playlistsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->activityUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->activityUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 183
    iget-wide v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->channelViewsCount:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 184
    iget-wide v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadViewsCount:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 185
    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscribersCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    .line 158
    return-object v0
.end method

.method public final hasAge()Z
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->age:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLegalAge()Z
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->age:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->email:Ljava/lang/String;

    goto :goto_0
.end method
