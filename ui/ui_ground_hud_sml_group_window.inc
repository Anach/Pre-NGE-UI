	<Page
		AllowLookAtTargetSelection='true'
		BackgroundColor='#FFFFFF'
		Location='0,125'
		MaximumSize='255,16384'
		MinimumSize='255,60'
		Name='smlgroupwin'
		OnDisableEffector='/effectors.opacity.bg.fadeout'
		OnEnableEffector='/effectors.opacity.bg.fadethreequarter'
		RStyleDefault='/Styles.window.mfd.mfd3.rs_default'
		ScrollExtent='255,60'
		Size='255,60'
		SizeIncrement='1,60'
		TextOpacityRelativeApply='true'
		TextOpacityRelativeMin='0.80'
		UserMovable='true'
		UserResizable='true'
	>
		<Data
			Name='CodeData'
			sample='sample'
			timerbar='countdownTimerBar.bar.value'
			timerpage='countdownTimerBar'
			timertext='countdownTimerBar.text'
		/>
		<Page
			MaximumSize='16384,60'
			MinimumSize='0,24'
			Name='countdownTimerBar'
			RStyleDefault='rs_default'
			ScrollExtent='253,60'
			Size='253,60'
		>
			<Text
				ColorSelection='#FFFFFF'
				Font='bold_11'
				LocalText='xxx countdown time: 666'
				MinimumSize='0,24'
				Name='text'
				PackSize='a'
				PalText='text1'
				ScrollExtent='253,24'
				Size='253,24'
				TextAlignment='Center'
				TextAlignmentVertical='Center'
				TextColor='#96F4FC'
			>xxx countdown time: 666</Text>
			<Page
				BackgroundColor='#FFFFFF'
				BackgroundOpacity='1.00'
				BackgroundTint='#222222'
				MaximumSize='16384,24'
				MinimumSize='0,24'
				Name='bar'
				OpacityRelativeMin='1.00'
				PackSize='a,a'
				RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
				ScrollExtent='253,24'
				Size='253,24'
				TextOpacityRelativeMin='1.00'
			>
				<Page
					BackgroundColor='#FFFFFF'
					BackgroundOpacity='1.00'
					Color='#BFBF00'
					Location='2,2'
					MaximumSize='500,16384'
					Name='value'
					OpacityRelativeMin='1.00'
					RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
					ScrollExtent='254,20'
					Size='254,20'
				/>
			</Page>
		</Page>
		<Page
			BackgroundColor='#0000FF'
			MaximumSize='255,60'
			MinimumSize='255,60'
			Name='sample'
			ScrollExtent='255,60'
			Selectable='true'
			Size='255,60'
			TextOpacityRelativeApply='true'
			TextOpacityRelativeMin='0.80'
		>
			<Page
				ContextToParent='true'
				GetsInput='false'
				Location='239,-1'
				MaximumSize='100,100'
				MinimumSize='4,4'
				Name='sampleIconPage'
				ScrollExtent='16,16'
				Size='16,16'
				Visible='false'
			>
				<Text
					Font='bold_11'
					LocalText='1'
					Location='0,6'
					MaximumSize='1683,1683'
					MaxLines='1'
					Name='textStack'
					PalText='text1'
					ScrollExtent='16,10'
					Size='16,10'
					TextAlignment='Right'
					TextAlignmentVertical='Center'
					TextColor='#96F4FC'
				>1</Text>
				<Image
					AbsorbsInput='false'
					Color='#54E4FE'
					MaximumSize='100,100'
					MinimumSize='4,4'
					Name='icon'
					OnDisable='opacity=0'
					OnEnableEffector='/effectors.opacity.fast.fadefull'
					PackLocation='npn,npn'
					PackSize='p,p'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.cover'
				/>
			</Page>
			<Data
				combatEffector='combatEffector'
				combatEffectorTarget='vsp.role'
				conEven='vsp.con.con_even'
				conHiger='vsp.con.con_higher'
				conLower='vsp.con.con_lower'
				directionArrow='vsp.arrow'
				level='vsp.role.targetLevel'
				Name='CodeData'
				pagea='ham.a'
				pageh='ham.h'
				pagem='ham.m'
				role='vsp.role'
				roleIcon='vsp.role.icon'
				samplestateicon='sampleStateIcon'
				speakingIcon='speakingIcon'
				states='states'
				textDistance='textDistance'
				textname='textName'
				volumedebuff='debuff'
				volumestates='states'
			/>
			<ColorEffector
				Cycling='true'
				ForceColor='true'
				Name='combatEffector'
				RestoreColor='true'
				Speed='3.00'
				TargetColor='#FF0000'
				TargetColor2='#FFFFFF'
			/>
			<Page
				Location='34,14'
				Name='ham'
				OnEnableEffector=' /Effectors.Fadefull'
				OpacityRelativeMin='1.00'
				PackLocation='nfn,nfn'
				PackSize='a,a'
				ScrollExtent='192,24'
				Size='192,24'
				TextOpacityRelativeApply='true'
				TextOpacityRelativeMin='0.80'
			>
				<Page
					Name='h'
					Orientation='horizontal'
					PackLocation='nfn,nfn'
					PackSize='a,p'
					ScrollExtent='192,12'
					Size='192,12'
				>
					<Data
						back='bar.back'
						cap='bar.cap'
						juice='bar.juice'
						moves='bar.move'
						Name='CodeData'
					/>
					<Page
						BackgroundColor='#FFFFFF'
						MinimumSize='0,4'
						Name='Bar'
						PackSize='a,1'
						RStyleDefault='/Styles.ham_new.bar.rs_default'
						ScrollExtent='192,12'
						Size='192,12'
					>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#FF0000'
							Location='37,0'
							MinimumSize='15,2'
							Name='move'
							PackLocation='nfn,fff'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='29,12'
							Size='29,12'
							Visible='false'
						/>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#000000'
							Location='174,0'
							Name='cap'
							PackLocation='fpf'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='18,12'
							Size='18,12'
						/>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#FF0000'
							MinimumSize='20,0'
							Name='juice'
							PackLocation='nfn,nfn'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='108,12'
							Size='108,12'
						/>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#990000'
							Name='back'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='192,12'
							Size='192,12'
						/>
					</Page>
				</Page>
				<Page
					Location='0,12'
					MinimumSize='5,4'
					Name='a'
					Orientation='horizontal'
					PackLocation='nfn,nfn'
					PackSize='a,p'
					ScrollExtent='192,10'
					Size='192,10'
				>
					<Data
						back='bar.back'
						cap='bar.cap'
						juice='bar.juice'
						moves='bar.move'
						Name='CodeData'
					/>
					<Page
						BackgroundColor='#FFFFFF'
						MinimumSize='0,4'
						Name='Bar'
						PackSize='a,1'
						RStyleDefault='/Styles.ham_new.bar.rs_default'
						ScrollExtent='192,10'
						Size='192,10'
					>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#1DE306'
							Location='39,0'
							MinimumSize='15,2'
							Name='move'
							PackLocation='nfn,fff'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='29,10'
							Size='29,10'
							Visible='false'
						/>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#000000'
							Location='174,0'
							Name='cap'
							PackLocation='fpf'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='18,10'
							Size='18,10'
						/>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#00FF00'
							MinimumSize='20,0'
							Name='juice'
							PackLocation='nfn,nfn'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='108,10'
							Size='108,10'
						/>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#009900'
							Name='back'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='192,10'
							Size='192,10'
						/>
					</Page>
				</Page>
				<Page
					Location='0,12'
					MinimumSize='5,4'
					Name='m'
					Orientation='horizontal'
					PackLocation='nfn,nfn'
					PackSize='a,p'
					ScrollExtent='192,10'
					Size='192,10'
					Visible='false'
				>
					<Data
						back='bar.back'
						cap='bar.cap'
						juice='bar.juice'
						moves='bar.move'
						Name='CodeData'
					/>
					<Page
						BackgroundColor='#FFFFFF'
						MinimumSize='0,4'
						Name='Bar'
						PackSize='a,1'
						RStyleDefault='/Styles.ham_new.bar.rs_default'
						ScrollExtent='192,7'
						Size='192,7'
					>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#095FFF'
							Location='48,0'
							MinimumSize='15,2'
							Name='move'
							PackLocation='nfn,fff'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='66,7'
							Size='66,7'
							Visible='false'
						/>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#000000'
							Location='174,0'
							Name='cap'
							PackLocation='fpf'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='18,7'
							Size='18,7'
						/>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#0000FF'
							MinimumSize='20,0'
							Name='juice'
							PackLocation='nfn,nfn'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='146,7'
							Size='146,7'
						/>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#000099'
							Name='back'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='192,7'
							Size='192,7'
						/>
					</Page>
				</Page>
				<Page
					Name='c'
					Orientation='horizontal'
					PackLocation='nfn,nfn'
					PackSize='a,p'
					ScrollExtent='192,24'
					Size='192,24'
					Visible='false'
				>
					<Data
						back='bar.back'
						cap='bar.cap'
						juice='bar.juice'
						moves='bar.move'
						Name='CodeData'
					/>
					<Page
						BackgroundColor='#FFFFFF'
						MinimumSize='0,4'
						Name='Bar'
						PackSize='a,1'
						RStyleDefault='/Styles.ham_new.bar.rs_default'
						ScrollExtent='192,24'
						Size='192,24'
					>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#FF0000'
							Location='37,0'
							MinimumSize='15,2'
							Name='move'
							PackLocation='nfn,fff'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='29,24'
							Size='29,24'
							Visible='false'
						/>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#000000'
							Location='174,0'
							Name='cap'
							PackLocation='fpf'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='18,24'
							Size='18,24'
						/>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#FF0000'
							MinimumSize='20,0'
							Name='juice'
							PackLocation='nfn,nfn'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='108,24'
							Size='108,24'
						/>
						<Page
							BackgroundColor='#FFFFFF'
							BackgroundOpacity='1.00'
							BackgroundTint='#990000'
							Name='back'
							PackSize='p,1'
							RStyleDefault='/Styles.mfd.statusbars_small.current.rs_default'
							ScrollExtent='192,24'
							Size='192,24'
						/>
					</Page>
				</Page>
			</Page>
			<VolumePage
				BackgroundColor='#FFFFFF'
				BackgroundTint='#000000'
				CellAlignmentH='left'
				CellCount='14,1'
				CellPadding='0,0'
				CellSelectable='false'
				CellSelectionOverlayOpacity='1.00'
				CellSize='16,16'
				GetsInput='false'
				IsGroupWindow='True'
				Location='23,42'
				MaximumSize='16384,16'
				MinimumScrollExtent='96,16'
				MinimumSize='0,16'
				Name='states'
				OpacityRelativeMin='1.00'
				PackLocation='nfn,fff'
				PackSize='a,a'
				ScrollExtent='224,16'
				Size='224,16'
			>
				<Image
					Color='#54E4FE'
					LocalTooltip='st'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.cover'
					Tooltip='st'
				/>
				<Image
					Color='#54E4FE'
					Location='16,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.cover'
				/>
				<Image
					Color='#54E4FE'
					Location='32,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.combat'
				/>
				<Image
					Color='#54E4FE'
					Location='48,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.peace'
				/>
				<Image
					Color='#54E4FE'
					Location='64,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.aiming'
				/>
				<Image
					Color='#54E4FE'
					Location='80,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='96,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='112,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='128,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='144,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='160,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='176,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='192,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='208,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
			</VolumePage>
			<VolumePage
				BackgroundColor='#FFFFFF'
				BackgroundTint='#000000'
				CellAlignmentH='left'
				CellCount='14,1'
				CellCountFixed='14,1'
				CellPadding='0,0'
				CellSelectable='false'
				CellSelectionOverlayOpacity='1.00'
				CellSize='16,16'
				GetsInput='false'
				IsGroupWindow='True'
				Location='23,42'
				MaximumSize='16384,16'
				MinimumScrollExtent='96,16'
				MinimumSize='0,16'
				Name='debuff'
				OpacityRelativeMin='1.00'
				PackLocation='nfn,fff'
				PackSize='a,a'
				ScrollExtent='224,16'
				Size='224,16'
			>
				<Image
					Color='#54E4FE'
					LocalTooltip='st'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.cover'
					Tooltip='st'
				/>
				<Image
					Color='#54E4FE'
					Location='16,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.cover'
				/>
				<Image
					Color='#54E4FE'
					Location='32,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.combat'
				/>
				<Image
					Color='#54E4FE'
					Location='48,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.peace'
				/>
				<Image
					Color='#54E4FE'
					Location='64,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.aiming'
				/>
				<Image
					Color='#54E4FE'
					Location='80,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='96,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='112,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='128,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='144,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='160,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='176,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='192,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
				<Image
					Color='#54E4FE'
					Location='208,0'
					MaximumSize='16,16'
					MinimumSize='11,11'
					Name='i'
					PalColor='icondefault'
					ScrollExtent='16,16'
					Size='16,16'
					Style='/Styles.Icon.state.alert'
				/>
			</VolumePage>
			<Image
				BackgroundColor='#FFFFFF'
				Color='#62FF15'
				Location='242,-1'
				Name='IconFocus'
				OpacityRelativeMin='0.70'
				PackLocation='fff,nfn'
				PackSize='f,f'
				PalColor='contrast1'
				ScrollExtent='13,12'
				Size='13,12'
				SourceRect='493,221,482,211'
				SourceResource='ui_rebel_final'
			/>
			<Text
				Font='normal_12'
				LocalText='1875m'
				Location='200,1'
				Margin='0,0,10,0'
				MaxLines='1'
				Name='textDistance'
				PackSize='a,f'
				ScrollExtent='54,15'
				Size='54,15'
				TextAlignment='Right'
				TextAlignmentVertical='center'
				TruncateElipsis='false'
			>1875m</Text>
			<Text
				Font='bold_12'
				LocalText='xxx target name'
				Location='34,1'
				MaxLines='1'
				Name='textName'
				PackLocation='nfn,nfn'
				PackSize='a,f'
				PalText='contrast1'
				ScrollExtent='166,15'
				Size='166,15'
				TextAlignmentVertical='center'
				TextColor='#62FF15'
			>xxx target name</Text>
			<Image
				ContextToParent='true'
				Location='4,36'
				Name='speakingIcon'
				OpacityRelativeMin='0.70'
				PackLocation='fff'
				ScrollExtent='16,16'
				Size='16,16'
				Style='/Styles.Icon.UIv2.CMD_uiChat'
			/>
			<Image
				Color='#54E4FE'
				LocalTooltip='tooltip'
				Location='23,42'
				MaximumSize='16,16'
				MinimumSize='16,16'
				Name='sampleStateIcon'
				OnDisable='opacity=0'
				OnEnableEffector='/effectors.opacity.fast.fadefull'
				PalColor='icondefault'
				ScrollExtent='16,16'
				Size='16,16'
				Style='/Styles.Icon.state.cover'
				Tooltip='tooltip'
				Visible='false'
			/>
			<Page
				ContextToParent='true'
				MaximumSize='16384,300'
				Name='vsp'
				PackLocation='nfn,fff'
				PackSize='f,f'
				RStyleDefault='rs_default'
				ScrollExtent='255,42'
				Size='255,42'
			>
				<Page
					Name='con'
					Opacity='0.00'
					ScrollExtent='10,9'
					Size='10,9'
				>
					<Image
						BackgroundColor='#42FF00'
						BackgroundTint='#42FF00'
						Color='#54E4FE'
						LocalTooltip='post'
						Location='-112,-14'
						MaximumSize='28,28'
						MinimumSize='28,28'
						Name='con_lower'
						PackLocation='cfc,cfc'
						PackSize='f,p'
						PalColor='icondefault'
						ScrollExtent='28,28'
						Size='28,28'
						Style='/Styles.UIv2.CON.con_lower'
						Tooltip='post'
					/>
					<Image
						BackgroundColor='#42FF00'
						BackgroundTint='#42FF00'
						Color='#54E4FE'
						LocalTooltip='post'
						Location='-112,-14'
						MaximumSize='28,28'
						MinimumSize='28,28'
						Name='con_higher'
						PackLocation='cfc,cfc'
						PackSize='f,p'
						PalColor='icondefault'
						ScrollExtent='28,28'
						Size='28,28'
						Style='/Styles.UIv2.CON.con_higher'
						Tooltip='post'
						Visible='false'
					/>
					<Image
						BackgroundColor='#42FF00'
						BackgroundTint='#42FF00'
						Color='#54E4FE'
						LocalTooltip='post'
						Location='-112,-14'
						MaximumSize='28,28'
						MinimumSize='28,28'
						Name='con_even'
						PackLocation='cfc,cfc'
						PackSize='f,p'
						PalColor='icondefault'
						ScrollExtent='28,28'
						Size='28,28'
						Style='/Styles.UIv2.CON.con_even'
						Tooltip='post'
						Visible='false'
					/>
				</Page>
				<Image
					ContextToParent='true'
					Location='228,16'
					Name='arrow'
					OpacityRelativeMin='0.70'
					PackLocation='fff'
					Rotation='0.30'
					ScrollExtent='22,22'
					Size='22,22'
					SourceRect='482,309,506,334'
					SourceResource='ui_rebel_final'
				/>
				<Page
					BackgroundOpacity='1.00'
					Name='role'
					OpacityRelativeMin='0.50'
					PackLocation='nfn,nfn'
					PackSize='f,f'
					RStyleDefault='/Styles.window.mfd.mfd3.rs_default'
					ScrollExtent='30,35'
					Size='30,35'
					TextOpacityRelativeApply='true'
					TextOpacityRelativeMin='0.00'
				>
					<Text
						BackgroundColor='#00FF00'
						Font='bold_11'
						LocalText='100'
						Location='0,22'
						Name='targetLevel'
						ScrollExtent='30,11'
						Size='30,11'
						TextAlignment='Center'
						TextAlignmentVertical='Center'
					>100</Text>
					<Image
						BackgroundColor='#FFFFFF'
						LocalTooltip='[@ui_role_tooltip:none]'
						Location='3,2'
						Name='icon'
						OpacityRelativeMin='0.40'
						PackLocation='cfc,cfc'
						PackSize='f,f'
						ScrollExtent='24,24'
						Size='24,24'
						Style='/Styles.Icon.role._none'
						Tooltip='@ui_role_tooltip:none'
					/>
				</Page>
			</Page>
			<Page
				BackgroundOpacity='1.00'
				GetsInput='false'
				Location='23,0'
				Name='back'
				OpacityRelativeMin='-0.10'
				PackLocation='nfn,nfn'
				PackSize='f,f'
				RStyleDefault='/Styles.window.mfd.mfd_back.rs_default'
				ScrollExtent='232,42'
				Size='232,42'
			/>
		</Page>
	</Page>
