# frozen_string_literal: true

module Engine
  module Game
    module G18Cuba
      module Entities
        COMPANIES = [
          {
            name: 'Juan Tirry y Lacy',
            sym: 'C1',
            value: 0,
            revenue: 0,
            desc: 'Marquis de la Cañada. Funding Amount: 30. Yellow plain track tile '\
                  '(standard or narrow gauge including sugar cane field tiles)',
            color: nil,
          },
          {
            name: 'José a. Ferrety',
            sym: 'C2',
            value: 0,
            revenue: 0,
            desc: 'Sociedad Económica. Funding Amount: 35. Yellow city tile (without Y city tiles or Havana)',
            color: nil,
          },
          {
            name: 'Carlos Pedroso',
            sym: 'C3',
            value: 0,
            revenue: 0,
            desc: 'Real Consulado. Funding Amount: 40. Green plain track tile '\
                  '(standard or narrow gauge including sugar cane field tiles)',
            color: nil,
          },
          {
            name: 'Domingo Herrera',
            sym: 'C4',
            value: 0,
            revenue: 0,
            desc: 'Ayuntamiento de la Habana (Havana City Council). Funding Amount: 50. '\
                  'Green city tile (without Y city tiles or Havana)',
            color: nil,
          },
          {
            name: 'Andrés de Zayas',
            sym: 'C5',
            value: 0,
            revenue: 0,
            desc: 'Ayuntamiento de la Habana (Havana City Council). Funding Amount: 70. '\
                  'Brown plain track tile (standard or narrow gauge including sugar cane field tiles)',
            color: nil,
          },
          {
            name: 'Francisco Romero',
            sym: 'C6',
            value: 0,
            revenue: 0,
            desc: 'Real Consulado. Funding Amount: 80. Brown city tile (without Y city tiles or Havana)',
            color: nil,
          },
          {
            name: 'Claudio Martínez de Pinillos, Count of Villanueva',
            sym: 'M1',
            value: 120,
            revenue: 0,
            desc: 'None',
            color: nil,
          },
          {
            name: 'Wenceslao de Villaurrutia, secretary',
            sym: 'M2',
            value: 140,
            revenue: 0,
            desc: '1 Wagon. Must be assigned to a major company.',
            color: nil,
          },
          {
            name: 'Antonio M. de Escovedo, trustee',
            sym: 'M3',
            value: 150,
            revenue: 0,
            desc: 'May be exchanged anytime during the game in one sugar mill machine (+10/+20/+40) '\
                  'if available to be used for a minor company. The machine is taken from the most expensive space.',
            color: nil,
          },
          {
            name: 'Joaquín de Uriarte, subintendant',
            sym: 'M4',
            value: 170,
            revenue: 0,
            desc: '10% FC share',
            color: nil,
          },
          {
            name: 'Miguel A. Herrera',
            sym: 'M5',
            value: 180,
            revenue: 0,
            desc: 'Mail contract. Must be assigned to a major company. Gives the company at the start of '\
                  'their turn during an OR if they own at least one train '\
                  'an income of +10/20/30/40 (depending on the phase).',
            color: nil,
          },
          {
            name: 'Alfred Cruger, first engineer',
            sym: 'M6',
            value: 200,
            revenue: 0,
            desc: '$80 discount on a n-train.',
            color: nil,
          },
        ].freeze

        CORPORATIONS = [
          {
            float_percent: 60,
            sym: 'Oe',
            name: 'FC del Oeste',
            logo: '18_Cuba/Oe',
            tokens: [0, 40, 60, 80],
            coordinates: 'B7',
            city: 0,
            color: :brown,
          },
          {
            float_percent: 60,
            sym: 'MS',
            name: 'FC de Matanzas a Sabanillas',
            logo: '18_Cuba/MS',
            tokens: [0, 40, 60, 80],
            coordinates: 'B9',
            color: :yellow,
            text_color: :black,
          },
          {
            float_percent: 60,
            sym: 'CVC',
            name: 'FC Cienfuegos y Villa Clara',
            logo: '18_Cuba/CVC',
            tokens: [0, 40, 60, 80],
            coordinates: 'C14',
            color: :darkgreen,
          },
          {
            float_percent: 60,
            sym: 'NPP',
            name: 'FC Nuevitas-Puerto Príncipe',
            logo: '18_Cuba/NPP',
            tokens: [0, 40, 60, 80],
            coordinates: 'D19',
            color: :orange,
          },
          {
            float_percent: 60,
            sym: 'SdC',
            name: 'FC Santiago de Cuba',
            logo: '18_Cuba/SdC',
            tokens: [0, 40, 60, 80],
            coordinates: 'G24',
            color: :lightblue,
          },
          {
            float_percent: 60,
            sym: 'TSS',
            name: 'FC las Tunas – Sancti Spiritus',
            logo: '18_Cuba/TSS',
            tokens: [0, 40, 60, 80],
            coordinates: 'E22',
            color: :red,
          },
          {
            float_percent: 60,
            sym: 'StSp',
            name: 'FC de Sancti Spiritus',
            logo: '18_Cuba/StSp',
            tokens: [0, 40, 60, 80],
            coordinates: 'D15',
            color: :black,
          },
          {
            float_percent: 60,
            sym: 'FEC',
            name: 'Florida East Coast Railroad',
            logo: '18_Cuba/FEC',
            tokens: [0, 40, 60, 80],
            color: :purple,
          },
          {
            float_percent: 60,
            sym: 'FC',
            name: 'FC Central',
            logo: '18_Cuba/FC',
            shares: [10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
            tokens: [0],
            coordinates: 'B7',
            city: 1,
            color: :white,
            text_color: :black,
          },
          {
            float_percent: 60,
            sym: 'HG',
            name: 'FC de Holguin a Gibara',
            type: 'minor',
            logo: '18_Cuba/HG',
            tokens: [0],
            shares: [40, 20, 20, 20],
            color: :purple,
          },
          {
            float_percent: 60,
            sym: 'JU',
            name: 'FC de Júcaro',
            logo: '18_Cuba/JU',
            type: 'minor',
            tokens: [0],
            shares: [40, 20, 20, 20],
            color: :pink,
          },
          {
            float_percent: 60,
            sym: 'HY',
            name: 'FC Cubano de Hershey',
            logo: '18_Cuba/HY',
            type: 'minor',
            tokens: [0],
            shares: [40, 20, 20, 20],
            color: :darkblue,
          },
          {
            float_percent: 60,
            sym: 'DQ',
            name: 'FC de Dubrocq',
            logo: '18_Cuba/DQ',
            type: 'minor',
            tokens: [0],
            shares: [40, 20, 20, 20],
            color: :'#8B8000',
          },
          {
            float_percent: 60,
            sym: 'CO',
            name: 'FC del Cobre',
            logo: '18_Cuba/CO',
            type: 'minor',
            tokens: [0],
            shares: [40, 20, 20, 20],
            color: :lightgreen,
          },
          {
            float_percent: 60,
            sym: 'SB',
            name: 'FC de Cárdenas a Soledad de Bemba',
            logo: '18_Cuba/SB',
            type: 'minor',
            tokens: [0],
            shares: [40, 20, 20, 20],
            color: :brown,
          },
        ].freeze
      end
    end
  end
end